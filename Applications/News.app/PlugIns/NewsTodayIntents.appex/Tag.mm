@interface Tag
- (Tag)initWithCoder:(id)coder;
- (Tag)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation Tag

- (Tag)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
  {
    v6 = sub_10000F154();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_10000F154();
  v11 = v10;
  if (hint)
  {
    v12 = sub_10000F154();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return Tag.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (Tag)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Tag();
  coderCopy = coder;
  v5 = [(Tag *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end