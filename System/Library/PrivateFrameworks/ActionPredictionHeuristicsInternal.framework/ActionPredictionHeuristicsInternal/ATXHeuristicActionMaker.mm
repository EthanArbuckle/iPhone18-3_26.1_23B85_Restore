@interface ATXHeuristicActionMaker
- (ATXHeuristicActionMaker)initWithCoder:(id)a3;
- (id)action;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHeuristicActionMaker

- (id)action
{
  v3 = [(ATXHeuristicActionMaker *)self _makeAction];
  v4 = v3;
  if (self->_criteria)
  {
    [v3 setCriteria:?];
  }

  if (self->_heuristic)
  {
    [v4 setHeuristic:?];
  }

  return v4;
}

- (ATXHeuristicActionMaker)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ATXHeuristicActionMaker;
  v5 = [(ATXHeuristicActionMaker *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"criteria"];
    criteria = v5->_criteria;
    v5->_criteria = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"heuristic"];
    heuristic = v5->_heuristic;
    v5->_heuristic = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  criteria = self->_criteria;
  v5 = a3;
  [v5 encodeObject:criteria forKey:@"criteria"];
  [v5 encodeObject:self->_heuristic forKey:@"heuristic"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
}

@end