@interface TUIGroupModel
- (TUIGroupModel)init;
- (TUIModelContaining)parentModel;
- (void)appendLayoutChildrenToArray:(id)a3;
- (void)appendLayoutModelsToArray:(id)a3;
- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4;
- (void)onContainedModelsChanged;
- (void)setSpan:(unint64_t)a3;
- (void)updateModelChildren:(id)a3;
@end

@implementation TUIGroupModel

- (TUIGroupModel)init
{
  v3.receiver = self;
  v3.super_class = TUIGroupModel;
  result = [(TUIGroupModel *)&v3 init];
  if (result)
  {
    *&result->_flags = *&result->_flags & 0xFC00 | 0x20;
  }

  return result;
}

- (void)setSpan:(unint64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  *&self->_flags = *&self->_flags & 0xFC1F | (32 * (v3 & 0x1F));
}

- (void)updateModelChildren:(id)a3
{
  children = self->_children;
  v5 = a3;
  [(NSArray *)children enumerateObjectsUsingBlock:&stru_25DF58];
  v6 = [v5 copy];

  v7 = self->_children;
  self->_children = v6;

  v8 = self->_children;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_18128;
  v9[3] = &unk_25DF80;
  v9[4] = self;
  [(NSArray *)v8 enumerateObjectsUsingBlock:v9];
  [(TUIGroupModel *)self onContainedModelsChanged];
}

- (void)appendLayoutModelsToArray:(id)a3
{
  v4 = a3;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_181DC;
  v7[3] = &unk_25DF80;
  v8 = v4;
  v6 = v4;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)appendLayoutChildrenToArray:(id)a3
{
  v4 = a3;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_18280;
  v7[3] = &unk_25DF80;
  v8 = v4;
  v6 = v4;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  children = self->_children;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1834C;
  v11[3] = &unk_25DFA8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSArray *)children enumerateObjectsUsingBlock:v11];
}

- (void)onContainedModelsChanged
{
  v2 = [(TUIGroupModel *)self parentModel];
  [v2 onContainedModelsChanged];
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end