@interface TUIGroupModel
- (TUIGroupModel)init;
- (TUIModelContaining)parentModel;
- (void)appendLayoutChildrenToArray:(id)array;
- (void)appendLayoutModelsToArray:(id)array;
- (void)appendObjectsWithProtocol:(id)protocol toArray:(id)array;
- (void)onContainedModelsChanged;
- (void)setSpan:(unint64_t)span;
- (void)updateModelChildren:(id)children;
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

- (void)setSpan:(unint64_t)span
{
  if (span <= 1)
  {
    spanCopy = 1;
  }

  else
  {
    spanCopy = span;
  }

  *&self->_flags = *&self->_flags & 0xFC1F | (32 * (spanCopy & 0x1F));
}

- (void)updateModelChildren:(id)children
{
  children = self->_children;
  childrenCopy = children;
  [(NSArray *)children enumerateObjectsUsingBlock:&stru_25DF58];
  v6 = [childrenCopy copy];

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

- (void)appendLayoutModelsToArray:(id)array
{
  arrayCopy = array;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_181DC;
  v7[3] = &unk_25DF80;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)appendLayoutChildrenToArray:(id)array
{
  arrayCopy = array;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_18280;
  v7[3] = &unk_25DF80;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)appendObjectsWithProtocol:(id)protocol toArray:(id)array
{
  protocolCopy = protocol;
  arrayCopy = array;
  children = self->_children;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1834C;
  v11[3] = &unk_25DFA8;
  v12 = protocolCopy;
  v13 = arrayCopy;
  v9 = arrayCopy;
  v10 = protocolCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v11];
}

- (void)onContainedModelsChanged
{
  parentModel = [(TUIGroupModel *)self parentModel];
  [parentModel onContainedModelsChanged];
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end