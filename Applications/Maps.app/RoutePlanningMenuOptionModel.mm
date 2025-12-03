@interface RoutePlanningMenuOptionModel
- (RoutePlanningMenuOptionModel)initWithIdentifier:(id)identifier title:(id)title selected:(BOOL)selected;
@end

@implementation RoutePlanningMenuOptionModel

- (RoutePlanningMenuOptionModel)initWithIdentifier:(id)identifier title:(id)title selected:(BOOL)selected
{
  identifierCopy = identifier;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = RoutePlanningMenuOptionModel;
  v10 = [(RoutePlanningMenuOptionModel *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v13;

    v10->_selected = selected;
  }

  return v10;
}

@end