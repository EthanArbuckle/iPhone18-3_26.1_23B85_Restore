@interface ATXHeuristicActionMaker
- (ATXHeuristicActionMaker)initWithCoder:(id)coder;
- (id)action;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHeuristicActionMaker

- (id)action
{
  _makeAction = [(ATXHeuristicActionMaker *)self _makeAction];
  v4 = _makeAction;
  if (self->_criteria)
  {
    [_makeAction setCriteria:?];
  }

  if (self->_heuristic)
  {
    [v4 setHeuristic:?];
  }

  return v4;
}

- (ATXHeuristicActionMaker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ATXHeuristicActionMaker;
  v5 = [(ATXHeuristicActionMaker *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"criteria"];
    criteria = v5->_criteria;
    v5->_criteria = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"heuristic"];
    heuristic = v5->_heuristic;
    v5->_heuristic = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  criteria = self->_criteria;
  coderCopy = coder;
  [coderCopy encodeObject:criteria forKey:@"criteria"];
  [coderCopy encodeObject:self->_heuristic forKey:@"heuristic"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
}

@end