@interface _AFSiriHomeAutomationRequestInfoMutation
- (_AFSiriHomeAutomationRequestInfoMutation)initWithBaseModel:(id)a3;
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
        v6 = self->_context;
      }

      else
      {
        v6 = [(AFSiriHomeAutomationRequestInfo *)baseModel context];
      }

      v7 = v6;
      v5 = [[AFSiriHomeAutomationRequestInfo alloc] initWithContext:v6];

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

- (_AFSiriHomeAutomationRequestInfoMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFSiriHomeAutomationRequestInfoMutation;
  v6 = [(_AFSiriHomeAutomationRequestInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end