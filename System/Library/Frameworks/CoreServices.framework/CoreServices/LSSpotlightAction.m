@interface LSSpotlightAction
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSpotlightAction:(id)a3;
- (LSSpotlightAction)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 unlocalizedTitle:(id)a4 symbolImageName:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSSpotlightAction

- (id)_initWithIdentifier:(id)a3 unlocalizedTitle:(id)a4 symbolImageName:(id)a5
{
  v11.receiver = self;
  v11.super_class = LSSpotlightAction;
  v8 = [(LSSpotlightAction *)&v11 init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(LSSpotlightAction *)self isEqualToSpotlightAction:a3];
}

- (unint64_t)hash
{
  v3 = [(LSSpotlightAction *)self identifier];
  v4 = [v3 hash];
  v5 = [(LSSpotlightAction *)self unlocalizedTitle];
  v6 = [v5 hash];
  v7 = [(LSSpotlightAction *)self symbolImageName];
  v8 = [v7 hash];

  return v6 ^ v4 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(LSSpotlightAction *)self identifier];
  v6 = [(LSSpotlightAction *)self unlocalizedTitle];
  v7 = [(LSSpotlightAction *)self symbolImageName];
  v8 = [v3 stringWithFormat:@"<%@ %p> { identifier = %@, unlocalizedTitle = %@, symbolImageName = %@ }", v4, self, v5, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_identifier forKey:@"identifier"];
  [a3 encodeObject:self->_unlocalizedTitle forKey:@"unlocalizedTitle"];
  symbolImageName = self->_symbolImageName;

  [a3 encodeObject:symbolImageName forKey:@"symbolImageName"];
}

- (LSSpotlightAction)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = LSSpotlightAction;
  v4 = [(LSSpotlightAction *)&v12 init];
  if (v4)
  {
    v5 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v4->_identifier;
    v4->_identifier = v5;

    v7 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"unlocalizedTitle"];
    unlocalizedTitle = v4->_unlocalizedTitle;
    v4->_unlocalizedTitle = v7;

    v9 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"symbolImageName"];
    symbolImageName = v4->_symbolImageName;
    v4->_symbolImageName = v9;
  }

  return v4;
}

- (BOOL)isEqualToSpotlightAction:(id)a3
{
  v6 = [(LSSpotlightAction *)self identifier];
  v7 = [a3 identifier];
  if ([v6 isEqual:v7])
  {
    v8 = [(LSSpotlightAction *)self unlocalizedTitle];
    v9 = [a3 unlocalizedTitle];
    if (![v8 isEqual:v9])
    {
      v13 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v10 = [(LSSpotlightAction *)self symbolImageName];
    if (v10 || ([a3 symbolImageName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [(LSSpotlightAction *)self symbolImageName];
      v12 = [a3 symbolImageName];
      v13 = [v11 isEqual:v12];

      if (v10)
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