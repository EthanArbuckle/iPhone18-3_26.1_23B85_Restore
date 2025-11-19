@interface CPNavigationAlert
- (CPNavigationAlert)initWithCoder:(id)a3;
- (CPNavigationAlert)initWithTitleVariants:(NSArray *)titleVariants subtitleVariants:(NSArray *)subtitleVariants image:(UIImage *)image primaryAction:(CPAlertAction *)primaryAction secondaryAction:(CPAlertAction *)secondaryAction duration:(NSTimeInterval)duration;
- (CPNavigationAlertUpdating)navigationAlertUpdateTarget;
- (UIImage)image;
- (id)_initWithTitleVariants:(id)a3 subtitleVariants:(id)a4 imageSet:(id)a5 primaryAction:(id)a6 secondaryAction:(id)a7 duration:(double)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateTitleVariants:(NSArray *)newTitleVariants subtitleVariants:(NSArray *)newSubtitleVariants;
@end

@implementation CPNavigationAlert

- (id)_initWithTitleVariants:(id)a3 subtitleVariants:(id)a4 imageSet:(id)a5 primaryAction:(id)a6 secondaryAction:(id)a7 duration:(double)a8
{
  v36 = a3;
  v34 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v17)
  {
    v19 = objc_opt_class();
    CPAssertAllowedClass(v17, v19, a2);
  }

  if (v18)
  {
    v20 = objc_opt_class();
    CPAssertAllowedClass(v18, v20, a2);
  }

  v37.receiver = self;
  v37.super_class = CPNavigationAlert;
  v21 = [(CPNavigationAlert *)&v37 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_titleVariants, a3);
    objc_storeStrong(&v22->_subtitleVariants, a4);
    v23 = objc_opt_class();
    v24 = v16;
    v25 = [(CPImageSet *)v24 lightContentImage];
    v26 = CPSanitizeImage(v25, v23);
    [(CPImageSet *)v24 setLightContentImage:v26];

    v27 = [(CPImageSet *)v24 darkContentImage];
    v28 = CPSanitizeImage(v27, v23);
    [(CPImageSet *)v24 setDarkContentImage:v28];

    imageSet = v22->_imageSet;
    v22->_imageSet = v24;

    objc_storeStrong(&v22->_primaryAction, a6);
    objc_storeStrong(&v22->_secondaryAction, a7);
    v30 = fmax(a8, 5.0);
    if (a8 <= 0.0)
    {
      v30 = 0.0;
    }

    v22->_duration = v30;
    v31 = [MEMORY[0x277CCAD78] UUID];
    identifier = v22->_identifier;
    v22->_identifier = v31;
  }

  return v22;
}

- (CPNavigationAlert)initWithTitleVariants:(NSArray *)titleVariants subtitleVariants:(NSArray *)subtitleVariants image:(UIImage *)image primaryAction:(CPAlertAction *)primaryAction secondaryAction:(CPAlertAction *)secondaryAction duration:(NSTimeInterval)duration
{
  v14 = titleVariants;
  v15 = subtitleVariants;
  v16 = primaryAction;
  v17 = secondaryAction;
  if (image)
  {
    v18 = image;
    v19 = [CPImageSet alloc];
    v20 = CPImageByScalingImageToSize(v18, 24.0, 24.0);

    image = [(CPImageSet *)v19 initWithImage:v20];
  }

  v21 = [(CPNavigationAlert *)self _initWithTitleVariants:v14 subtitleVariants:v15 imageSet:image primaryAction:v16 secondaryAction:v17 duration:duration];

  return v21;
}

- (void)updateTitleVariants:(NSArray *)newTitleVariants subtitleVariants:(NSArray *)newSubtitleVariants
{
  v11 = newTitleVariants;
  v7 = newSubtitleVariants;
  objc_storeStrong(&self->_titleVariants, newTitleVariants);
  subtitleVariants = self->_subtitleVariants;
  self->_subtitleVariants = v7;

  v9 = [(CPNavigationAlert *)self navigationAlertUpdateTarget];

  if (v9)
  {
    v10 = [(CPNavigationAlert *)self navigationAlertUpdateTarget];
    [v10 _updateNavigationAlert:self];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPNavigationAlert *)self titleVariants];
  [v4 encodeObject:v5 forKey:@"kCPNavigationAlertTitlesKey"];

  v6 = [(CPNavigationAlert *)self subtitleVariants];
  [v4 encodeObject:v6 forKey:@"kCPNavigationAlertSubtitlesKey"];

  v7 = [(CPNavigationAlert *)self imageSet];
  [v4 encodeObject:v7 forKey:@"kCPNavigationAlertImageKey"];

  v8 = [(CPNavigationAlert *)self primaryAction];
  [v4 encodeObject:v8 forKey:@"kCPNavitationAlertPrimaryKey"];

  v9 = [(CPNavigationAlert *)self secondaryAction];
  [v4 encodeObject:v9 forKey:@"kCPNavigationAlertSecondaryKey"];

  [(CPNavigationAlert *)self duration];
  *&v10 = v10;
  [v4 encodeFloat:@"kCPNavigationAlertDurationKey" forKey:v10];
  v11 = [(CPNavigationAlert *)self identifier];
  [v4 encodeObject:v11 forKey:@"kCPNavigationAlertIdentifierKey"];
}

- (CPNavigationAlert)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CPNavigationAlert;
  v5 = [(CPNavigationAlert *)&v32 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCPNavigationAlertTitlesKey"];
    titleVariants = v5->_titleVariants;
    v5->_titleVariants = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kCPNavigationAlertSubtitlesKey"];
    subtitleVariants = v5->_subtitleVariants;
    v5->_subtitleVariants = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavigationAlertImageKey"];
    v17 = objc_opt_class();
    v18 = v16;
    v19 = [(CPImageSet *)v18 lightContentImage];
    v20 = CPSanitizeImage(v19, v17);
    [(CPImageSet *)v18 setLightContentImage:v20];

    v21 = [(CPImageSet *)v18 darkContentImage];
    v22 = CPSanitizeImage(v21, v17);
    [(CPImageSet *)v18 setDarkContentImage:v22];

    imageSet = v5->_imageSet;
    v5->_imageSet = v18;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavitationAlertPrimaryKey"];
    primaryAction = v5->_primaryAction;
    v5->_primaryAction = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavigationAlertSecondaryKey"];
    secondaryAction = v5->_secondaryAction;
    v5->_secondaryAction = v26;

    [v4 decodeFloatForKey:@"kCPNavigationAlertDurationKey"];
    v5->_duration = v28;
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavigationAlertIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v29;
  }

  return v5;
}

- (UIImage)image
{
  v2 = [(CPNavigationAlert *)self imageSet];
  v3 = [v2 image];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = CPNavigationAlert;
  v4 = [(CPNavigationAlert *)&v12 description];
  v5 = [(CPNavigationAlert *)self identifier];
  [(CPNavigationAlert *)self duration];
  v7 = v6;
  v8 = [(CPNavigationAlert *)self titleVariants];
  v9 = [(CPNavigationAlert *)self subtitleVariants];
  v10 = [v3 stringWithFormat:@"%@ {UUID: %@, duration: %f, title variants: %@, subtitle variants, %@}", v4, v5, v7, v8, v9];

  return v10;
}

- (CPNavigationAlertUpdating)navigationAlertUpdateTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationAlertUpdateTarget);

  return WeakRetained;
}

@end