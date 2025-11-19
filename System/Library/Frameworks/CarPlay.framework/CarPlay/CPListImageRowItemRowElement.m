@interface CPListImageRowItemRowElement
- (CPListImageRowItemRowElement)initWithCoder:(id)a3;
- (CPListImageRowItemRowElement)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPListImageRowItemRowElement

- (CPListImageRowItemRowElement)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = CPListImageRowItemRowElement;
  v10 = [(CPListImageRowItemElement *)&v16 initWithImage:a3];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [v9 copy];
    subtitle = v10->_subtitle;
    v10->_subtitle = v13;
  }

  return v10;
}

- (CPListImageRowItemRowElement)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPListImageRowItemRowElement;
  v5 = [(CPListImageRowItemElement *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemRowElementTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemRowElementSubtitleKey"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CPListImageRowItemRowElement;
  v4 = a3;
  [(CPListImageRowItemElement *)&v7 encodeWithCoder:v4];
  v5 = [(CPListImageRowItemRowElement *)self title:v7.receiver];
  [v4 encodeObject:v5 forKey:@"kCPListImageRowItemRowElementTitleKey"];

  v6 = [(CPListImageRowItemRowElement *)self subtitle];
  [v4 encodeObject:v6 forKey:@"kCPListImageRowItemRowElementSubtitleKey"];
}

@end