@interface CTSIMToolkitItem
- (CTSIMToolkitItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSIMToolkitItem

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  text = [(CTSIMToolkitItem *)self text];
  [v3 appendFormat:@", Text=%@", text];

  selected = [(CTSIMToolkitItem *)self selected];
  v6 = @"No";
  if (selected)
  {
    v6 = @"Yes";
  }

  [v3 appendFormat:@", Selected=%@", v6];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  text = [(CTSIMToolkitItem *)self text];
  v6 = [text copy];
  v7 = [v4 initWithText:v6 selected:{-[CTSIMToolkitItem selected](self, "selected")}];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  text = [(CTSIMToolkitItem *)self text];
  [coderCopy encodeObject:text forKey:@"kTextKey"];

  [coderCopy encodeBool:-[CTSIMToolkitItem selected](self forKey:{"selected"), @"kSelectedKey"}];
}

- (CTSIMToolkitItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTSIMToolkitItem;
  v5 = [(CTSIMToolkitItem *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTextKey"];
    text = v5->_text;
    v5->_text = v6;

    v5->_selected = [coderCopy decodeBoolForKey:@"kSelectedKey"];
  }

  return v5;
}

@end