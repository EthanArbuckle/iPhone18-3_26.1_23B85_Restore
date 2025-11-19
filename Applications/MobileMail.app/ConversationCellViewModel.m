@interface ConversationCellViewModel
- (ConversationCellViewModel)initWithBuilder:(id)a3;
- (ConversationCellViewModel)initWithItemBuilder:(id)a3;
- (id)copyWithBuilder:(id)a3;
- (id)copyWithFlagsModelBuilder:(id)a3;
@end

@implementation ConversationCellViewModel

- (ConversationCellViewModel)initWithBuilder:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ConversationCellViewModel.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v9.receiver = self;
  v9.super_class = ConversationCellViewModel;
  v6 = [(ConversationCellViewModel *)&v9 init];
  if (v6)
  {
    v5[2](v5, v6);
  }

  return v6;
}

- (ConversationCellViewModel)initWithItemBuilder:(id)a3
{
  v5 = a3;
  [(ConversationCellViewModel *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationCellViewModel initWithItemBuilder:]", "ConversationCellViewModel.m", 41, "0");
}

- (id)copyWithFlagsModelBuilder:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"ConversationCellViewModel.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"flagsBuilderBlock"}];
  }

  v6 = objc_alloc(objc_opt_class());
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004F638;
  v11[3] = &unk_10064C758;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  v8 = [v6 initWithBuilder:v11];

  return v8;
}

- (id)copyWithBuilder:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"ConversationCellViewModel.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v6 = objc_alloc(objc_opt_class());
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004F954;
  v11[3] = &unk_10064C758;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  v8 = [v6 initWithBuilder:v11];

  return v8;
}

@end