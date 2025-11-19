@interface TUIImpressionSnapshot
- (TUIImpressionSnapshot)initWithMap:(id)a3;
- (id)description;
- (id)impressionForIdentifier:(id)a3;
@end

@implementation TUIImpressionSnapshot

- (TUIImpressionSnapshot)initWithMap:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIImpressionSnapshot;
  v5 = [(TUIImpressionSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    map = v5->_map;
    v5->_map = v6;
  }

  return v5;
}

- (id)impressionForIdentifier:(id)a3
{
  if (a3)
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