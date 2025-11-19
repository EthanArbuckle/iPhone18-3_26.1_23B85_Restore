@interface ASDPropertyAddress
- (ASDPropertyAddress)initWithAddress:(AudioObjectPropertyAddress)a3;
- (ASDPropertyAddress)initWithDictionary:(id)a3;
- (ASDPropertyAddress)initWithSelector:(unsigned int)a3 scope:(unsigned int)a4 element:(unsigned int)a5;
- (AudioObjectPropertyAddress)audioObjectPropertyAddress;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASDPropertyAddress

- (ASDPropertyAddress)initWithAddress:(AudioObjectPropertyAddress)a3
{
  mElement = a3.mElement;
  v4 = *&a3.mSelector;
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

- (ASDPropertyAddress)initWithSelector:(unsigned int)a3 scope:(unsigned int)a4 element:(unsigned int)a5
{
  v9.receiver = self;
  v9.super_class = ASDPropertyAddress;
  result = [(ASDPropertyAddress *)&v9 init];
  if (result)
  {
    result->_audioObjectPropertyAddress.mSelector = a3;
    result->_audioObjectPropertyAddress.mScope = a4;
    result->_audioObjectPropertyAddress.mElement = a5;
  }

  return result;
}

- (ASDPropertyAddress)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDPropertyAddress;
  v5 = [(ASDPropertyAddress *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if ([v4 fourCharCode:&v5->_audioObjectPropertyAddress forKey:@"Selector"])
    {
      if (([v4 fourCharCode:&v6->_audioObjectPropertyAddress.mScope forKey:@"Scope"] & 1) == 0)
      {
        v6->_audioObjectPropertyAddress.mScope = 1735159650;
      }

      [v4 fourCharCode:&v6->_audioObjectPropertyAddress.mElement forKey:@"Element"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ASDPropertyAddress *)v5 selector];
      if (v6 == [(ASDPropertyAddress *)self selector]&& (v7 = [(ASDPropertyAddress *)v5 scope], v7 == [(ASDPropertyAddress *)self scope]))
      {
        v8 = [(ASDPropertyAddress *)v5 element];
        v9 = v8 == [(ASDPropertyAddress *)self element];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v6 = [(ASDPropertyAddress *)self audioObjectPropertyAddress];

  return [v4 initWithAddress:{v6, v5}];
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
    v6 = 32;
  }

  else
  {
    v6 = [(ASDPropertyAddress *)self selector];
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
    v10 = 32;
  }

  else
  {
    v10 = [(ASDPropertyAddress *)self scope];
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
    v14 = 32;
  }

  else
  {
    v14 = [(ASDPropertyAddress *)self element];
  }

  return [v18 stringWithFormat:@"selector:%c%c%c%c scope:%c%c%c%c element:%c%c%c%c", v17, v16, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14];
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