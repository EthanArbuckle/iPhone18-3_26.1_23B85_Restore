@interface TUILinkEntityAction
- (TUILinkEntityAction)initWithName:(id)a3 trigger:(id)a4 refId:(id)a5;
- (id)description;
@end

@implementation TUILinkEntityAction

- (TUILinkEntityAction)initWithName:(id)a3 trigger:(id)a4 refId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = TUILinkEntityAction;
  v11 = [(TUILinkEntityAction *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    trigger = v11->_trigger;
    v11->_trigger = v14;

    v16 = [v10 copy];
    refId = v11->_refId;
    v11->_refId = v16;
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ name=%@ trigger=%@ refId=%@>", v4, self->_name, self->_trigger, self->_refId];

  return v5;
}

@end