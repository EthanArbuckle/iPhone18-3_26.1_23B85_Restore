@interface ConversationCellViewModel
- (ConversationCellViewModel)initWithBuilder:(id)builder;
- (ConversationCellViewModel)initWithItemBuilder:(id)builder;
- (id)copyWithBuilder:(id)builder;
- (id)copyWithFlagsModelBuilder:(id)builder;
@end

@implementation ConversationCellViewModel

- (ConversationCellViewModel)initWithBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ConversationCellViewModel.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v9.receiver = self;
  v9.super_class = ConversationCellViewModel;
  v6 = [(ConversationCellViewModel *)&v9 init];
  if (v6)
  {
    builderCopy[2](builderCopy, v6);
  }

  return v6;
}

- (ConversationCellViewModel)initWithItemBuilder:(id)builder
{
  builderCopy = builder;
  [(ConversationCellViewModel *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationCellViewModel initWithItemBuilder:]", "ConversationCellViewModel.m", 41, "0");
}

- (id)copyWithFlagsModelBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
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
  v7 = builderCopy;
  v12 = v7;
  v8 = [v6 initWithBuilder:v11];

  return v8;
}

- (id)copyWithBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
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
  v7 = builderCopy;
  v12 = v7;
  v8 = [v6 initWithBuilder:v11];

  return v8;
}

@end