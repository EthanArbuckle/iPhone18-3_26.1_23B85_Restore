@interface MFComposeAttachmentInfo
- (MFComposeAttachmentInfo)initWithCoder:(id)a3;
- (MFComposeAttachmentInfo)initWithURL:(id)a3 filename:(id)a4 isBasicImage:(BOOL)a5 isDisplayableImage:(BOOL)a6 className:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MFComposeAttachmentInfo

- (MFComposeAttachmentInfo)initWithURL:(id)a3 filename:(id)a4 isBasicImage:(BOOL)a5 isDisplayableImage:(BOOL)a6 className:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = MFComposeAttachmentInfo;
  v15 = [(MSAttachmentInfo *)&v20 initWithURL:v12 filename:v13];
  v16 = v15;
  if (v15)
  {
    v15->_isBasicImage = a5;
    v15->_isDisplayableImage = a6;
    v17 = [v14 copy];
    className = v16->_className;
    v16->_className = v17;
  }

  return v16;
}

- (MFComposeAttachmentInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFComposeAttachmentInfo;
  v5 = [(MSAttachmentInfo *)&v10 initWithCoder:v4];
  if (!v5 || ([v4 allowsKeyedCoding] & 1) != 0 && (v5->_isBasicImage = objc_msgSend(v4, "decodeBoolForKey:", @"IsBasicImage"), v5->_isDisplayableImage = objc_msgSend(v4, "decodeBoolForKey:", @"IsDisplayableImage"), objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"ClassName"), v6 = objc_claimAutoreleasedReturnValue(), className = v5->_className, v5->_className = v6, className, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFComposeAttachmentInfo;
  [(MSAttachmentInfo *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_isBasicImage forKey:@"IsBasicImage"];
  [v4 encodeBool:self->_isDisplayableImage forKey:@"IsDisplayableImage"];
  [v4 encodeObject:self->_className forKey:@"ClassName"];
}

@end