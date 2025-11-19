@interface TUILinkEntityModel
- (NSSet)actions;
- (NSString)description;
- (TUILinkEntityModel)initWithType:(id)a3 identifier:(id)a4 title:(id)a5 actionsMap:(id)a6;
@end

@implementation TUILinkEntityModel

- (TUILinkEntityModel)initWithType:(id)a3 identifier:(id)a4 title:(id)a5 actionsMap:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = TUILinkEntityModel;
  v14 = [(TUILinkEntityModel *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    type = v14->_type;
    v14->_type = v15;

    v17 = [v11 copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v19 = [v12 copy];
    title = v14->_title;
    v14->_title = v19;

    v21 = [v13 copy];
    actionsMap = v14->_actionsMap;
    v14->_actionsMap = v21;
  }

  return v14;
}

- (NSSet)actions
{
  v2 = [(NSDictionary *)self->_actionsMap allKeys];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v11 = *&self->_type;
  title = self->_title;
  v6 = [(NSDictionary *)self->_actionsMap allKeys];
  v7 = [v6 sortedArrayUsingSelector:"compare:"];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [NSString stringWithFormat:@"<%@ type=%@ identifier='%@' title='%@' actions=%@>", v4, v11, title, v8];

  return v9;
}

@end