@interface CPNavigationAlert
- (CPNavigationAlert)initWithCoder:(id)coder;
- (CPNavigationAlert)initWithTitleVariants:(NSArray *)titleVariants subtitleVariants:(NSArray *)subtitleVariants image:(UIImage *)image primaryAction:(CPAlertAction *)primaryAction secondaryAction:(CPAlertAction *)secondaryAction duration:(NSTimeInterval)duration;
- (CPNavigationAlertUpdating)navigationAlertUpdateTarget;
- (UIImage)image;
- (id)_initWithTitleVariants:(id)variants subtitleVariants:(id)subtitleVariants imageSet:(id)set primaryAction:(id)action secondaryAction:(id)secondaryAction duration:(double)duration;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateTitleVariants:(NSArray *)newTitleVariants subtitleVariants:(NSArray *)newSubtitleVariants;
@end

@implementation CPNavigationAlert

- (id)_initWithTitleVariants:(id)variants subtitleVariants:(id)subtitleVariants imageSet:(id)set primaryAction:(id)action secondaryAction:(id)secondaryAction duration:(double)duration
{
  variantsCopy = variants;
  subtitleVariantsCopy = subtitleVariants;
  setCopy = set;
  actionCopy = action;
  secondaryActionCopy = secondaryAction;
  if (actionCopy)
  {
    v19 = objc_opt_class();
    CPAssertAllowedClass(actionCopy, v19, a2);
  }

  if (secondaryActionCopy)
  {
    v20 = objc_opt_class();
    CPAssertAllowedClass(secondaryActionCopy, v20, a2);
  }

  v37.receiver = self;
  v37.super_class = CPNavigationAlert;
  v21 = [(CPNavigationAlert *)&v37 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_titleVariants, variants);
    objc_storeStrong(&v22->_subtitleVariants, subtitleVariants);
    v23 = objc_opt_class();
    v24 = setCopy;
    lightContentImage = [(CPImageSet *)v24 lightContentImage];
    v26 = CPSanitizeImage(lightContentImage, v23);
    [(CPImageSet *)v24 setLightContentImage:v26];

    darkContentImage = [(CPImageSet *)v24 darkContentImage];
    v28 = CPSanitizeImage(darkContentImage, v23);
    [(CPImageSet *)v24 setDarkContentImage:v28];

    imageSet = v22->_imageSet;
    v22->_imageSet = v24;

    objc_storeStrong(&v22->_primaryAction, action);
    objc_storeStrong(&v22->_secondaryAction, secondaryAction);
    v30 = fmax(duration, 5.0);
    if (duration <= 0.0)
    {
      v30 = 0.0;
    }

    v22->_duration = v30;
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v22->_identifier;
    v22->_identifier = uUID;
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

  navigationAlertUpdateTarget = [(CPNavigationAlert *)self navigationAlertUpdateTarget];

  if (navigationAlertUpdateTarget)
  {
    navigationAlertUpdateTarget2 = [(CPNavigationAlert *)self navigationAlertUpdateTarget];
    [navigationAlertUpdateTarget2 _updateNavigationAlert:self];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  titleVariants = [(CPNavigationAlert *)self titleVariants];
  [coderCopy encodeObject:titleVariants forKey:@"kCPNavigationAlertTitlesKey"];

  subtitleVariants = [(CPNavigationAlert *)self subtitleVariants];
  [coderCopy encodeObject:subtitleVariants forKey:@"kCPNavigationAlertSubtitlesKey"];

  imageSet = [(CPNavigationAlert *)self imageSet];
  [coderCopy encodeObject:imageSet forKey:@"kCPNavigationAlertImageKey"];

  primaryAction = [(CPNavigationAlert *)self primaryAction];
  [coderCopy encodeObject:primaryAction forKey:@"kCPNavitationAlertPrimaryKey"];

  secondaryAction = [(CPNavigationAlert *)self secondaryAction];
  [coderCopy encodeObject:secondaryAction forKey:@"kCPNavigationAlertSecondaryKey"];

  [(CPNavigationAlert *)self duration];
  *&v10 = v10;
  [coderCopy encodeFloat:@"kCPNavigationAlertDurationKey" forKey:v10];
  identifier = [(CPNavigationAlert *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPNavigationAlertIdentifierKey"];
}

- (CPNavigationAlert)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = CPNavigationAlert;
  v5 = [(CPNavigationAlert *)&v32 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCPNavigationAlertTitlesKey"];
    titleVariants = v5->_titleVariants;
    v5->_titleVariants = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kCPNavigationAlertSubtitlesKey"];
    subtitleVariants = v5->_subtitleVariants;
    v5->_subtitleVariants = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavigationAlertImageKey"];
    v17 = objc_opt_class();
    v18 = v16;
    lightContentImage = [(CPImageSet *)v18 lightContentImage];
    v20 = CPSanitizeImage(lightContentImage, v17);
    [(CPImageSet *)v18 setLightContentImage:v20];

    darkContentImage = [(CPImageSet *)v18 darkContentImage];
    v22 = CPSanitizeImage(darkContentImage, v17);
    [(CPImageSet *)v18 setDarkContentImage:v22];

    imageSet = v5->_imageSet;
    v5->_imageSet = v18;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavitationAlertPrimaryKey"];
    primaryAction = v5->_primaryAction;
    v5->_primaryAction = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavigationAlertSecondaryKey"];
    secondaryAction = v5->_secondaryAction;
    v5->_secondaryAction = v26;

    [coderCopy decodeFloatForKey:@"kCPNavigationAlertDurationKey"];
    v5->_duration = v28;
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNavigationAlertIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v29;
  }

  return v5;
}

- (UIImage)image
{
  imageSet = [(CPNavigationAlert *)self imageSet];
  image = [imageSet image];

  return image;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = CPNavigationAlert;
  v4 = [(CPNavigationAlert *)&v12 description];
  identifier = [(CPNavigationAlert *)self identifier];
  [(CPNavigationAlert *)self duration];
  v7 = v6;
  titleVariants = [(CPNavigationAlert *)self titleVariants];
  subtitleVariants = [(CPNavigationAlert *)self subtitleVariants];
  v10 = [v3 stringWithFormat:@"%@ {UUID: %@, duration: %f, title variants: %@, subtitle variants, %@}", v4, identifier, v7, titleVariants, subtitleVariants];

  return v10;
}

- (CPNavigationAlertUpdating)navigationAlertUpdateTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationAlertUpdateTarget);

  return WeakRetained;
}

@end