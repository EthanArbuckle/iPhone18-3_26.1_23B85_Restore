@interface CTSIMToolkitMenu
- (CTSIMToolkitMenu)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSIMToolkitMenu

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  title = [(CTSIMToolkitMenu *)self title];
  [v3 appendFormat:@", Title=%@", title];

  subTitles = [(CTSIMToolkitMenu *)self subTitles];
  [v3 appendFormat:@", SubTitlesCount=%lu", objc_msgSend(subTitles, "count")];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(CTSIMToolkitMenu *)self title];
  v7 = [title copyWithZone:zone];
  [v5 setTitle:v7];

  subTitles = [(CTSIMToolkitMenu *)self subTitles];
  v9 = [subTitles copyWithZone:zone];
  [v5 setSubTitles:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(CTSIMToolkitMenu *)self title];
  [coderCopy encodeObject:title forKey:@"kTitleKey"];

  subTitles = [(CTSIMToolkitMenu *)self subTitles];
  [coderCopy encodeObject:subTitles forKey:@"kSubTitlesKey"];
}

- (CTSIMToolkitMenu)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CTSIMToolkitMenu;
  v5 = [(CTSIMToolkitMenu *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kSubTitlesKey"];
    subTitles = v5->_subTitles;
    v5->_subTitles = v11;
  }

  return v5;
}

@end