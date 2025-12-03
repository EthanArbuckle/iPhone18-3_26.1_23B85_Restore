@interface ASDSelectorValue
- (ASDSelectorValue)initWithValue:(unsigned int)value name:(id)name andKind:(unsigned int)kind selected:(BOOL)selected;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation ASDSelectorValue

- (ASDSelectorValue)initWithValue:(unsigned int)value name:(id)name andKind:(unsigned int)kind selected:(BOOL)selected
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = ASDSelectorValue;
  v12 = [(ASDSelectorValue *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_value = value;
    objc_storeStrong(&v12->_name, name);
    v13->_kind = kind;
    v13->_selected = selected;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [(ASDSelectorValue *)equalCopy value];
      v6 = value == [(ASDSelectorValue *)self value];
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
  value = [(ASDSelectorValue *)self value];
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
    value2 = 32;
  }

  else
  {
    value2 = [(ASDSelectorValue *)self value];
  }

  name = [(ASDSelectorValue *)self name];
  kind = [(ASDSelectorValue *)self kind];
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
    kind2 = 32;
  }

  else
  {
    kind2 = [(ASDSelectorValue *)self kind];
  }

  selected = [(ASDSelectorValue *)self selected];
  v14 = "";
  if (selected)
  {
    v14 = ", selected";
  }

  v15 = [v19 stringWithFormat:@"value: %x (%c%c%c%c), name: %@, kind: %x (%c%c%c%c)%s", value, v17, v4, v5, value2, name, kind, v9, v10, v11, kind2, v14];

  return v15;
}

@end