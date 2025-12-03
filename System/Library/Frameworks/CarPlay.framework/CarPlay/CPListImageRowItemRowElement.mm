@interface CPListImageRowItemRowElement
- (CPListImageRowItemRowElement)initWithCoder:(id)coder;
- (CPListImageRowItemRowElement)initWithImage:(id)image title:(id)title subtitle:(id)subtitle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPListImageRowItemRowElement

- (CPListImageRowItemRowElement)initWithImage:(id)image title:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v16.receiver = self;
  v16.super_class = CPListImageRowItemRowElement;
  v10 = [(CPListImageRowItemElement *)&v16 initWithImage:image];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [subtitleCopy copy];
    subtitle = v10->_subtitle;
    v10->_subtitle = v13;
  }

  return v10;
}

- (CPListImageRowItemRowElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPListImageRowItemRowElement;
  v5 = [(CPListImageRowItemElement *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemRowElementTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemRowElementSubtitleKey"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CPListImageRowItemRowElement;
  coderCopy = coder;
  [(CPListImageRowItemElement *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CPListImageRowItemRowElement *)self title:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPListImageRowItemRowElementTitleKey"];

  subtitle = [(CPListImageRowItemRowElement *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"kCPListImageRowItemRowElementSubtitleKey"];
}

@end