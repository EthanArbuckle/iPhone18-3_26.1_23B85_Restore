@interface ASDPropertyAddress
- (ASDPropertyAddress)initWithAddress:(AudioObjectPropertyAddress)address;
- (ASDPropertyAddress)initWithDictionary:(id)dictionary;
- (ASDPropertyAddress)initWithSelector:(unsigned int)selector scope:(unsigned int)scope element:(unsigned int)element;
- (AudioObjectPropertyAddress)audioObjectPropertyAddress;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASDPropertyAddress

- (ASDPropertyAddress)initWithAddress:(AudioObjectPropertyAddress)address
{
  mElement = address.mElement;
  v4 = *&address.mSelector;
  v6.receiver = self;
  v6.super_class = ASDPropertyAddress;
  result = [(ASDPropertyAddress *)&v6 init];
  if (result)
  {
    *&result->_audioObjectPropertyAddress.mSelector = v4;
    result->_audioObjectPropertyAddress.mElement = mElement;
  }

  return result;
}

- (ASDPropertyAddress)initWithSelector:(unsigned int)selector scope:(unsigned int)scope element:(unsigned int)element
{
  v9.receiver = self;
  v9.super_class = ASDPropertyAddress;
  result = [(ASDPropertyAddress *)&v9 init];
  if (result)
  {
    result->_audioObjectPropertyAddress.mSelector = selector;
    result->_audioObjectPropertyAddress.mScope = scope;
    result->_audioObjectPropertyAddress.mElement = element;
  }

  return result;
}

- (ASDPropertyAddress)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ASDPropertyAddress;
  v5 = [(ASDPropertyAddress *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if ([dictionaryCopy fourCharCode:&v5->_audioObjectPropertyAddress forKey:@"Selector"])
    {
      if (([dictionaryCopy fourCharCode:&v6->_audioObjectPropertyAddress.mScope forKey:@"Scope"] & 1) == 0)
      {
        v6->_audioObjectPropertyAddress.mScope = 1735159650;
      }

      [dictionaryCopy fourCharCode:&v6->_audioObjectPropertyAddress.mElement forKey:@"Element"];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Couldn't create ASDPropertyAddress: bad selector in dictionary", v8, 2u);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      selector = [(ASDPropertyAddress *)v5 selector];
      if (selector == [(ASDPropertyAddress *)self selector]&& (v7 = [(ASDPropertyAddress *)v5 scope], v7 == [(ASDPropertyAddress *)self scope]))
      {
        element = [(ASDPropertyAddress *)v5 element];
        v9 = element == [(ASDPropertyAddress *)self element];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:{-[ASDPropertyAddress selector](self, "selector")}];
  v4 = [v3 hash];
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:{-[ASDPropertyAddress scope](self, "scope")}];
  v6 = [v5 hash] ^ v4;
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:{-[ASDPropertyAddress element](self, "element")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  audioObjectPropertyAddress = [(ASDPropertyAddress *)self audioObjectPropertyAddress];

  return [v4 initWithAddress:{audioObjectPropertyAddress, v5}];
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  if ([(ASDPropertyAddress *)self selector]< 0x20000000 || [(ASDPropertyAddress *)self selector]> 2130706431)
  {
    v3 = 32;
  }

  else
  {
    v3 = ([(ASDPropertyAddress *)self selector]>> 24);
  }

  v17 = v3;
  if (([(ASDPropertyAddress *)self selector]<< 8) < 0x20000000 || ([(ASDPropertyAddress *)self selector]<< 8) > 2130706431)
  {
    v4 = 32;
  }

  else
  {
    v4 = (([(ASDPropertyAddress *)self selector]<< 8) >> 24);
  }

  v16 = v4;
  if ([(ASDPropertyAddress *)self selector]< 0x2000 || [(ASDPropertyAddress *)self selector]> 32511)
  {
    v5 = 32;
  }

  else
  {
    v5 = ([(ASDPropertyAddress *)self selector]>> 8);
  }

  if ([(ASDPropertyAddress *)self selector]< 32 || [(ASDPropertyAddress *)self selector]== 127)
  {
    selector = 32;
  }

  else
  {
    selector = [(ASDPropertyAddress *)self selector];
  }

  if ([(ASDPropertyAddress *)self scope]< 0x20000000 || [(ASDPropertyAddress *)self scope]> 2130706431)
  {
    v7 = 32;
  }

  else
  {
    v7 = ([(ASDPropertyAddress *)self scope]>> 24);
  }

  if (([(ASDPropertyAddress *)self scope]<< 8) < 0x20000000 || ([(ASDPropertyAddress *)self scope]<< 8) > 2130706431)
  {
    v8 = 32;
  }

  else
  {
    v8 = (([(ASDPropertyAddress *)self scope]<< 8) >> 24);
  }

  if ([(ASDPropertyAddress *)self scope]< 0x2000 || [(ASDPropertyAddress *)self scope]> 32511)
  {
    v9 = 32;
  }

  else
  {
    v9 = ([(ASDPropertyAddress *)self scope]>> 8);
  }

  if ([(ASDPropertyAddress *)self scope]< 32 || [(ASDPropertyAddress *)self scope]== 127)
  {
    scope = 32;
  }

  else
  {
    scope = [(ASDPropertyAddress *)self scope];
  }

  if ([(ASDPropertyAddress *)self element]< 0x20000000 || [(ASDPropertyAddress *)self element]> 2130706431)
  {
    v11 = 32;
  }

  else
  {
    v11 = ([(ASDPropertyAddress *)self element]>> 24);
  }

  if (([(ASDPropertyAddress *)self element]<< 8) < 0x20000000 || ([(ASDPropertyAddress *)self element]<< 8) > 2130706431)
  {
    v12 = 32;
  }

  else
  {
    v12 = (([(ASDPropertyAddress *)self element]<< 8) >> 24);
  }

  if ([(ASDPropertyAddress *)self element]< 0x2000 || [(ASDPropertyAddress *)self element]> 32511)
  {
    v13 = 32;
  }

  else
  {
    v13 = ([(ASDPropertyAddress *)self element]>> 8);
  }

  if ([(ASDPropertyAddress *)self element]< 32 || [(ASDPropertyAddress *)self element]== 127)
  {
    element = 32;
  }

  else
  {
    element = [(ASDPropertyAddress *)self element];
  }

  return [v18 stringWithFormat:@"selector:%c%c%c%c scope:%c%c%c%c element:%c%c%c%c", v17, v16, v5, selector, v7, v8, v9, scope, v11, v12, v13, element];
}

- (AudioObjectPropertyAddress)audioObjectPropertyAddress
{
  mElement = self->_audioObjectPropertyAddress.mElement;
  v3 = *&self->_audioObjectPropertyAddress.mSelector;
  result.mSelector = v3;
  result.mScope = HIDWORD(v3);
  result.mElement = mElement;
  return result;
}

@end