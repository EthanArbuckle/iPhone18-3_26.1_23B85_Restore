@interface MPArtworkImageAttachments
- (MPArtworkImageAttachments)initWithCoder:(id)coder;
- (MPArtworkImageAttachments)initWithTextColor:(id)color gradientInfo:(id)info hasTitle:(BOOL)title;
- (MPArtworkImageAttachments)initWithTextColor:(id)color hasTitle:(BOOL)title;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPArtworkImageAttachments

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  textColor = [(MPArtworkImageAttachments *)self textColor];
  [coderCopy encodeObject:textColor forKey:@"textColor"];

  [coderCopy encodeBool:-[MPArtworkImageAttachments hasTitle](self forKey:{"hasTitle"), @"hasTitle"}];
}

- (MPArtworkImageAttachments)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPArtworkImageAttachments *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
    textColor = v5->_textColor;
    v5->_textColor = v6;

    v5->_hasTitle = [coderCopy decodeBoolForKey:@"hasTitle"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  textColor = [(MPArtworkImageAttachments *)self textColor];
  hasTitle = [(MPArtworkImageAttachments *)self hasTitle];
  v7 = @"NO";
  if (hasTitle)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> (\n  textColor: %@\n  hasTitle: %@\n)", v4, self, textColor, v7];

  return v8;
}

- (MPArtworkImageAttachments)initWithTextColor:(id)color hasTitle:(BOOL)title
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = MPArtworkImageAttachments;
  v8 = [(MPArtworkImageAttachments *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_textColor, color);
    v9->_hasTitle = title;
  }

  return v9;
}

- (MPArtworkImageAttachments)initWithTextColor:(id)color gradientInfo:(id)info hasTitle:(BOOL)title
{
  colorCopy = color;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = MPArtworkImageAttachments;
  v11 = [(MPArtworkImageAttachments *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_textColor, color);
    v12->_hasTitle = title;
    objc_storeStrong(&v12->_gradient, info);
  }

  return v12;
}

@end