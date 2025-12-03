@interface MusicKit_SoftLinking_CatalogID
- (MusicKit_SoftLinking_CatalogID)initWithValue:(id)value kind:(int64_t)kind;
- (id)description;
@end

@implementation MusicKit_SoftLinking_CatalogID

- (MusicKit_SoftLinking_CatalogID)initWithValue:(id)value kind:(int64_t)kind
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_CatalogID;
  v7 = [(MusicKit_SoftLinking_CatalogID *)&v11 init];
  if (v7)
  {
    v8 = [valueCopy copy];
    value = v7->_value;
    v7->_value = v8;

    v7->_kind = kind;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; value = %@", self->_value];
  kind = self->_kind;
  if (kind > 8)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_278229C28[kind];
  }

  [v6 appendFormat:@"; kind = %@", v8];
  [v6 appendString:@">"];

  return v6;
}

@end