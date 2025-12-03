@interface _WKModalContainerInfo
- (_WKModalContainerInfo)initWithTypes:(OptionSet<WebCore::ModalContainerControlType>)types;
@end

@implementation _WKModalContainerInfo

- (_WKModalContainerInfo)initWithTypes:(OptionSet<WebCore::ModalContainerControlType>)types
{
  v5.receiver = self;
  v5.super_class = _WKModalContainerInfo;
  result = [(_WKModalContainerInfo *)&v5 init];
  if (result)
  {
    if ((types.var0 & 2) != 0)
    {
      result->_availableTypes |= 2uLL;
      if ((types.var0 & 4) == 0)
      {
LABEL_4:
        if ((types.var0 & 1) == 0)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    else if ((types.var0 & 4) == 0)
    {
      goto LABEL_4;
    }

    result->_availableTypes |= 4uLL;
    if ((types.var0 & 1) == 0)
    {
      return result;
    }

LABEL_5:
    result->_availableTypes |= 1uLL;
  }

  return result;
}

@end