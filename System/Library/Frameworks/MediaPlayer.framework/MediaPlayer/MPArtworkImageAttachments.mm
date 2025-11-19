@interface MPArtworkImageAttachments
- (MPArtworkImageAttachments)initWithCoder:(id)a3;
- (MPArtworkImageAttachments)initWithTextColor:(id)a3 gradientInfo:(id)a4 hasTitle:(BOOL)a5;
- (MPArtworkImageAttachments)initWithTextColor:(id)a3 hasTitle:(BOOL)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPArtworkImageAttachments

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(MPArtworkImageAttachments *)self textColor];
  [v5 encodeObject:v4 forKey:@"textColor"];

  [v5 encodeBool:-[MPArtworkImageAttachments hasTitle](self forKey:{"hasTitle"), @"hasTitle"}];
}

- (MPArtworkImageAttachments)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MPArtworkImageAttachments *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
    textColor = v5->_textColor;
    v5->_textColor = v6;

    v5->_hasTitle = [v4 decodeBoolForKey:@"hasTitle"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPArtworkImageAttachments *)self textColor];
  v6 = [(MPArtworkImageAttachments *)self hasTitle];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> (\n  textColor: %@\n  hasTitle: %@\n)", v4, self, v5, v7];

  return v8;
}

- (MPArtworkImageAttachments)initWithTextColor:(id)a3 hasTitle:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MPArtworkImageAttachments;
  v8 = [(MPArtworkImageAttachments *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_textColor, a3);
    v9->_hasTitle = a4;
  }

  return v9;
}

- (MPArtworkImageAttachments)initWithTextColor:(id)a3 gradientInfo:(id)a4 hasTitle:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MPArtworkImageAttachments;
  v11 = [(MPArtworkImageAttachments *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_textColor, a3);
    v12->_hasTitle = a5;
    objc_storeStrong(&v12->_gradient, a4);
  }

  return v12;
}

@end