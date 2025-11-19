@interface RoutePlanningMenuOptionModel
- (RoutePlanningMenuOptionModel)initWithIdentifier:(id)a3 title:(id)a4 selected:(BOOL)a5;
@end

@implementation RoutePlanningMenuOptionModel

- (RoutePlanningMenuOptionModel)initWithIdentifier:(id)a3 title:(id)a4 selected:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = RoutePlanningMenuOptionModel;
  v10 = [(RoutePlanningMenuOptionModel *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    title = v10->_title;
    v10->_title = v13;

    v10->_selected = a5;
  }

  return v10;
}

@end