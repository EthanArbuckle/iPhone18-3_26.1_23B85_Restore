@interface CPVoiceControlState
- (CPVoiceControlState)initWithCoder:(id)coder;
- (CPVoiceControlState)initWithIdentifier:(NSString *)identifier titleVariants:(NSArray *)titleVariants image:(UIImage *)image repeats:(BOOL)repeats;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPVoiceControlState

- (CPVoiceControlState)initWithIdentifier:(NSString *)identifier titleVariants:(NSArray *)titleVariants image:(UIImage *)image repeats:(BOOL)repeats
{
  v11 = identifier;
  v12 = titleVariants;
  v13 = image;
  v24.receiver = self;
  v24.super_class = CPVoiceControlState;
  v14 = [(CPVoiceControlState *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeStrong(&v15->_titleVariants, titleVariants);
    images = [(UIImage *)v13 images];

    if (images)
    {
      [(UIImage *)v13 duration];
      v17 = 0.3;
      if (v18 < 0.3 || ([(UIImage *)v13 duration], v17 = 5.0, v19 > 5.0))
      {
        v20 = MEMORY[0x277D755B8];
        images2 = [(UIImage *)v13 images];
        v22 = [v20 animatedImageWithImages:images2 duration:v17];

        v13 = v22;
      }
    }

    objc_storeStrong(&v15->_image, v13);
    v15->_repeats = repeats;
  }

  return v15;
}

- (CPVoiceControlState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CPVoiceControlState;
  v5 = [(CPVoiceControlState *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPVoiceControlIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kCPVoiceControlTitlesKey"];
    titleVariants = v5->_titleVariants;
    v5->_titleVariants = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPVoiceControlAnimatedImageKey"];
    image = v5->_image;
    v5->_image = v13;

    v5->_repeats = [coderCopy decodeBoolForKey:@"kCPVoiceControlStateImageRepeatsKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CPVoiceControlState *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPVoiceControlIdentifierKey"];

  titleVariants = [(CPVoiceControlState *)self titleVariants];
  [coderCopy encodeObject:titleVariants forKey:@"kCPVoiceControlTitlesKey"];

  image = [(CPVoiceControlState *)self image];
  [coderCopy encodeObject:image forKey:@"kCPVoiceControlAnimatedImageKey"];

  [coderCopy encodeBool:-[CPVoiceControlState repeats](self forKey:{"repeats"), @"kCPVoiceControlStateImageRepeatsKey"}];
}

@end