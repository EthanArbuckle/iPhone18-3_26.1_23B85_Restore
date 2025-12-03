@interface _AFSiriHomeAutomationRequestInfoMutation
- (_AFSiriHomeAutomationRequestInfoMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _AFSiriHomeAutomationRequestInfoMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if (*&self->_mutationFlags)
    {
      if ((*&self->_mutationFlags & 2) != 0)
      {
        context = self->_context;
      }

      else
      {
        context = [(AFSiriHomeAutomationRequestInfo *)baseModel context];
      }

      v7 = context;
      v5 = [[AFSiriHomeAutomationRequestInfo alloc] initWithContext:context];

      goto LABEL_10;
    }

    v4 = [(AFSiriHomeAutomationRequestInfo *)baseModel copy];
  }

  else
  {
    v4 = [[AFSiriHomeAutomationRequestInfo alloc] initWithContext:self->_context];
  }

  v5 = v4;
LABEL_10:

  return v5;
}

- (_AFSiriHomeAutomationRequestInfoMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _AFSiriHomeAutomationRequestInfoMutation;
  v6 = [(_AFSiriHomeAutomationRequestInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end