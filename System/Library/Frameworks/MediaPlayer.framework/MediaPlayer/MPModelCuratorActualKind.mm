@interface MPModelCuratorActualKind
+ (id)identityKind;
+ (id)kindWithVariants:(unint64_t)variants;
- (BOOL)isEqual:(id)equal;
- (MPModelCuratorActualKind)initWithCoder:(id)coder;
- (id)humanDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelCuratorActualKind

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPModelCuratorActualKind;
  coderCopy = coder;
  [(MPModelKind *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_variants forKey:{@"variants", v5.receiver, v5.super_class}];
}

- (MPModelCuratorActualKind)initWithCoder:(id)coder
{
  v4 = +[MPModelCuratorActualKind kindWithVariants:](MPModelCuratorActualKind, "kindWithVariants:", [coder decodeIntegerForKey:@"variants"]);

  return v4;
}

- (id)humanDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
  v4 = v3;
  variants = self->_variants;
  if (variants)
  {
    [v3 addObject:@"Apple editor"];
    variants = self->_variants;
    if ((variants & 2) == 0)
    {
LABEL_3:
      if ((variants & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((variants & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"editorial genre"];
  variants = self->_variants;
  if ((variants & 4) == 0)
  {
LABEL_4:
    if ((variants & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v4 addObject:@"radio show"];
  variants = self->_variants;
  if ((variants & 8) == 0)
  {
LABEL_5:
    if ((variants & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v4 addObject:@"external curator"];
  variants = self->_variants;
  if ((variants & 0x10) == 0)
  {
LABEL_6:
    if ((variants & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v4 addObject:@"activity"];
  if ((self->_variants & 0x20) != 0)
  {
LABEL_7:
    [v4 addObject:@"editorial item"];
  }

LABEL_8:
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v4 componentsJoinedByString:@" or "];
  v8 = [v6 stringWithString:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = MPModelCuratorActualKind;
  if ([(MPModelKind *)&v7 isEqual:equalCopy])
  {
    v5 = self->_variants == equalCopy[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = MPModelCuratorActualKind;
  v3 = [(MPModelKind *)&v5 hash];
  return [(MPModelCuratorActualKind *)self variants]^ v3;
}

+ (id)kindWithVariants:(unint64_t)variants
{
  variants = [MEMORY[0x1E696AEC0] stringWithFormat:@"Curator:v%lu", variants];
  v6 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__MPModelCuratorActualKind_kindWithVariants___block_invoke;
  v9[3] = &__block_descriptor_40_e34_v16__0__MPModelCuratorActualKind_8l;
  v9[4] = variants;
  v7 = [self kindWithModelClass:v6 cacheKey:variants block:v9];

  return v7;
}

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end