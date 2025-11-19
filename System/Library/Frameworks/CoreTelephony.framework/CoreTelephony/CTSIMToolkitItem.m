@interface CTSIMToolkitItem
- (CTSIMToolkitItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSIMToolkitItem

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSIMToolkitItem *)self text];
  [v3 appendFormat:@", Text=%@", v4];

  v5 = [(CTSIMToolkitItem *)self selected];
  v6 = @"No";
  if (v5)
  {
    v6 = @"Yes";
  }

  [v3 appendFormat:@", Selected=%@", v6];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CTSIMToolkitItem *)self text];
  v6 = [v5 copy];
  v7 = [v4 initWithText:v6 selected:{-[CTSIMToolkitItem selected](self, "selected")}];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CTSIMToolkitItem *)self text];
  [v5 encodeObject:v4 forKey:@"kTextKey"];

  [v5 encodeBool:-[CTSIMToolkitItem selected](self forKey:{"selected"), @"kSelectedKey"}];
}

- (CTSIMToolkitItem)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTSIMToolkitItem;
  v5 = [(CTSIMToolkitItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTextKey"];
    text = v5->_text;
    v5->_text = v6;

    v5->_selected = [v4 decodeBoolForKey:@"kSelectedKey"];
  }

  return v5;
}

@end