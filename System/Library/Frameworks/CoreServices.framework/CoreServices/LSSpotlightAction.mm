@interface LSSpotlightAction
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSpotlightAction:(id)action;
- (LSSpotlightAction)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier unlocalizedTitle:(id)title symbolImageName:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSSpotlightAction

- (id)_initWithIdentifier:(id)identifier unlocalizedTitle:(id)title symbolImageName:(id)name
{
  v11.receiver = self;
  v11.super_class = LSSpotlightAction;
  v8 = [(LSSpotlightAction *)&v11 init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    objc_storeStrong(p_isa + 2, title);
    objc_storeStrong(p_isa + 3, name);
  }

  return p_isa;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(LSSpotlightAction *)self isEqualToSpotlightAction:equal];
}

- (unint64_t)hash
{
  identifier = [(LSSpotlightAction *)self identifier];
  v4 = [identifier hash];
  unlocalizedTitle = [(LSSpotlightAction *)self unlocalizedTitle];
  v6 = [unlocalizedTitle hash];
  symbolImageName = [(LSSpotlightAction *)self symbolImageName];
  v8 = [symbolImageName hash];

  return v6 ^ v4 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(LSSpotlightAction *)self identifier];
  unlocalizedTitle = [(LSSpotlightAction *)self unlocalizedTitle];
  symbolImageName = [(LSSpotlightAction *)self symbolImageName];
  v8 = [v3 stringWithFormat:@"<%@ %p> { identifier = %@, unlocalizedTitle = %@, symbolImageName = %@ }", v4, self, identifier, unlocalizedTitle, symbolImageName];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_identifier forKey:@"identifier"];
  [coder encodeObject:self->_unlocalizedTitle forKey:@"unlocalizedTitle"];
  symbolImageName = self->_symbolImageName;

  [coder encodeObject:symbolImageName forKey:@"symbolImageName"];
}

- (LSSpotlightAction)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = LSSpotlightAction;
  v4 = [(LSSpotlightAction *)&v12 init];
  if (v4)
  {
    v5 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v4->_identifier;
    v4->_identifier = v5;

    v7 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"unlocalizedTitle"];
    unlocalizedTitle = v4->_unlocalizedTitle;
    v4->_unlocalizedTitle = v7;

    v9 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"symbolImageName"];
    symbolImageName = v4->_symbolImageName;
    v4->_symbolImageName = v9;
  }

  return v4;
}

- (BOOL)isEqualToSpotlightAction:(id)action
{
  identifier = [(LSSpotlightAction *)self identifier];
  identifier2 = [action identifier];
  if ([identifier isEqual:identifier2])
  {
    unlocalizedTitle = [(LSSpotlightAction *)self unlocalizedTitle];
    unlocalizedTitle2 = [action unlocalizedTitle];
    if (![unlocalizedTitle isEqual:unlocalizedTitle2])
    {
      v13 = 0;
LABEL_12:

      goto LABEL_13;
    }

    symbolImageName = [(LSSpotlightAction *)self symbolImageName];
    if (symbolImageName || ([action symbolImageName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      symbolImageName2 = [(LSSpotlightAction *)self symbolImageName];
      symbolImageName3 = [action symbolImageName];
      v13 = [symbolImageName2 isEqual:symbolImageName3];

      if (symbolImageName)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_11;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

@end