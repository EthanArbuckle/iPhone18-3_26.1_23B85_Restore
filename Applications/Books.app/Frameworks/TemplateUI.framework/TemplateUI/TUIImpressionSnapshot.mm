@interface TUIImpressionSnapshot
- (TUIImpressionSnapshot)initWithMap:(id)map;
- (id)description;
- (id)impressionForIdentifier:(id)identifier;
@end

@implementation TUIImpressionSnapshot

- (TUIImpressionSnapshot)initWithMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = TUIImpressionSnapshot;
  v5 = [(TUIImpressionSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [mapCopy copy];
    map = v5->_map;
    v5->_map = v6;
  }

  return v5;
}

- (id)impressionForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSDictionary *)self->_map objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ impressions=%@>", v4, self->_map];

  return v5;
}

@end