@interface MFComposeAttachmentInfo
- (MFComposeAttachmentInfo)initWithCoder:(id)coder;
- (MFComposeAttachmentInfo)initWithURL:(id)l filename:(id)filename isBasicImage:(BOOL)image isDisplayableImage:(BOOL)displayableImage className:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFComposeAttachmentInfo

- (MFComposeAttachmentInfo)initWithURL:(id)l filename:(id)filename isBasicImage:(BOOL)image isDisplayableImage:(BOOL)displayableImage className:(id)name
{
  lCopy = l;
  filenameCopy = filename;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = MFComposeAttachmentInfo;
  v15 = [(MSAttachmentInfo *)&v20 initWithURL:lCopy filename:filenameCopy];
  v16 = v15;
  if (v15)
  {
    v15->_isBasicImage = image;
    v15->_isDisplayableImage = displayableImage;
    v17 = [nameCopy copy];
    className = v16->_className;
    v16->_className = v17;
  }

  return v16;
}

- (MFComposeAttachmentInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MFComposeAttachmentInfo;
  v5 = [(MSAttachmentInfo *)&v10 initWithCoder:coderCopy];
  if (!v5 || ([coderCopy allowsKeyedCoding] & 1) != 0 && (v5->_isBasicImage = objc_msgSend(coderCopy, "decodeBoolForKey:", @"IsBasicImage"), v5->_isDisplayableImage = objc_msgSend(coderCopy, "decodeBoolForKey:", @"IsDisplayableImage"), objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"ClassName"), v6 = objc_claimAutoreleasedReturnValue(), className = v5->_className, v5->_className = v6, className, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MFComposeAttachmentInfo;
  [(MSAttachmentInfo *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_isBasicImage forKey:@"IsBasicImage"];
  [coderCopy encodeBool:self->_isDisplayableImage forKey:@"IsDisplayableImage"];
  [coderCopy encodeObject:self->_className forKey:@"ClassName"];
}

@end