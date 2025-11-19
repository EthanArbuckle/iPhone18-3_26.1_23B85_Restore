@interface ASDSelectorValue
- (ASDSelectorValue)initWithValue:(unsigned int)a3 name:(id)a4 andKind:(unsigned int)a5 selected:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation ASDSelectorValue

- (ASDSelectorValue)initWithValue:(unsigned int)a3 name:(id)a4 andKind:(unsigned int)a5 selected:(BOOL)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = ASDSelectorValue;
  v12 = [(ASDSelectorValue *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_value = a3;
    objc_storeStrong(&v12->_name, a4);
    v13->_kind = a5;
    v13->_selected = a6;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ASDSelectorValue *)v4 value];
      v6 = v5 == [(ASDSelectorValue *)self value];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  v18 = [(ASDSelectorValue *)self value];
  if ([(ASDSelectorValue *)self value]< 0x20000000 || [(ASDSelectorValue *)self value]> 2130706431)
  {
    v3 = 32;
  }

  else
  {
    v3 = ([(ASDSelectorValue *)self value]>> 24);
  }

  v17 = v3;
  if (([(ASDSelectorValue *)self value]<< 8) < 0x20000000 || ([(ASDSelectorValue *)self value]<< 8) > 2130706431)
  {
    v4 = 32;
  }

  else
  {
    v4 = (([(ASDSelectorValue *)self value]<< 8) >> 24);
  }

  if ([(ASDSelectorValue *)self value]< 0x2000 || [(ASDSelectorValue *)self value]> 32511)
  {
    v5 = 32;
  }

  else
  {
    v5 = ([(ASDSelectorValue *)self value]>> 8);
  }

  if ([(ASDSelectorValue *)self value]< 32 || [(ASDSelectorValue *)self value]== 127)
  {
    v6 = 32;
  }

  else
  {
    v6 = [(ASDSelectorValue *)self value];
  }

  v7 = [(ASDSelectorValue *)self name];
  v8 = [(ASDSelectorValue *)self kind];
  if ([(ASDSelectorValue *)self kind]< 0x20000000 || [(ASDSelectorValue *)self kind]> 2130706431)
  {
    v9 = 32;
  }

  else
  {
    v9 = ([(ASDSelectorValue *)self kind]>> 24);
  }

  if (([(ASDSelectorValue *)self kind]<< 8) < 0x20000000 || ([(ASDSelectorValue *)self kind]<< 8) > 2130706431)
  {
    v10 = 32;
  }

  else
  {
    v10 = (([(ASDSelectorValue *)self kind]<< 8) >> 24);
  }

  if ([(ASDSelectorValue *)self kind]< 0x2000 || [(ASDSelectorValue *)self kind]> 32511)
  {
    v11 = 32;
  }

  else
  {
    v11 = ([(ASDSelectorValue *)self kind]>> 8);
  }

  if ([(ASDSelectorValue *)self kind]< 32 || [(ASDSelectorValue *)self kind]== 127)
  {
    v12 = 32;
  }

  else
  {
    v12 = [(ASDSelectorValue *)self kind];
  }

  v13 = [(ASDSelectorValue *)self selected];
  v14 = "";
  if (v13)
  {
    v14 = ", selected";
  }

  v15 = [v19 stringWithFormat:@"value: %x (%c%c%c%c), name: %@, kind: %x (%c%c%c%c)%s", v18, v17, v4, v5, v6, v7, v8, v9, v10, v11, v12, v14];

  return v15;
}

@end