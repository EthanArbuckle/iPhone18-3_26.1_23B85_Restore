@interface _GCGamepadEventFusionConfig
- (_GCGamepadEventFusionConfig)initWithCoder:(id)a3;
- (_GCGamepadEventFusionConfig)initWithSourceCount:(unint64_t)a3;
- (id)debugDescription;
- (unsigned)passRuleForElement:(int64_t)a3 forSourceAtIndex:(unint64_t)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateElementsForSourceAtIndex:(unint64_t)a3 withBlock:(id)a4;
- (void)setPassRule:(unsigned __int8)a3 forElement:(int64_t)a4 forSourceAtIndex:(unint64_t)a5;
@end

@implementation _GCGamepadEventFusionConfig

- (_GCGamepadEventFusionConfig)initWithSourceCount:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = _GCGamepadEventFusionConfig;
  v4 = [(_GCGamepadEventFusionConfig *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_sourceCount = a3;
    if (a3)
    {
      v4->_matrix = malloc_type_calloc(a3, 0x2FuLL, 0x10000408E6526DAuLL);
    }
  }

  return v5;
}

- (_GCGamepadEventFusionConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _GCGamepadEventFusionConfig;
  v5 = [(_GCGamepadEventFusionConfig *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"sourceCount"];
    v5->_sourceCount = v6;
    if (v6)
    {
      v11 = 0;
      v7 = [v4 decodeBytesForKey:@"matrix" returnedLength:&v11];
      v8 = malloc_type_calloc(v5->_sourceCount, 0x2FuLL, 0x10000408E6526DAuLL);
      v5->_matrix = v8;
      if (v11 >= 47 * v5->_sourceCount)
      {
        v9 = 47 * v5->_sourceCount;
      }

      else
      {
        v9 = v11;
      }

      memcpy(v8, v7, v9);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourceCount = self->_sourceCount;
  v5 = a3;
  [v5 encodeInteger:sourceCount forKey:@"sourceCount"];
  [v5 encodeBytes:self->_matrix length:47 * self->_sourceCount forKey:@"matrix"];
}

- (void)dealloc
{
  matrix = self->_matrix;
  if (matrix)
  {
    free(matrix);
  }

  v4.receiver = self;
  v4.super_class = _GCGamepadEventFusionConfig;
  [(_GCGamepadEventFusionConfig *)&v4 dealloc];
}

- (id)debugDescription
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47___GCGamepadEventFusionConfig_debugDescription__block_invoke;
  aBlock[3] = &unk_1E841AF88;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v20 = MEMORY[0x1E696AEC0];
  v19 = objc_opt_class();
  v46 = v2[2](v2, 0);
  v48 = v2[2](v2, 1);
  v44 = v2[2](v2, 2);
  v47 = v2[2](v2, 3);
  v42 = v2[2](v2, 4);
  v45 = v2[2](v2, 5);
  v43 = v2[2](v2, 6);
  v40 = v2[2](v2, 7);
  v41 = v2[2](v2, 8);
  v38 = v2[2](v2, 9);
  v39 = v2[2](v2, 10);
  v36 = v2[2](v2, 11);
  v37 = v2[2](v2, 12);
  v35 = v2[2](v2, 13);
  v34 = v2[2](v2, 14);
  v33 = v2[2](v2, 15);
  v32 = v2[2](v2, 16);
  v31 = v2[2](v2, 17);
  v29 = v2[2](v2, 18);
  v30 = v2[2](v2, 19);
  v28 = v2[2](v2, 20);
  v27 = v2[2](v2, 21);
  v17 = v2[2](v2, 22);
  v26 = v2[2](v2, 23);
  v25 = v2[2](v2, 24);
  v24 = v2[2](v2, 25);
  v16 = v2[2](v2, 26);
  v23 = v2[2](v2, 27);
  v15 = v2[2](v2, 28);
  v14 = v2[2](v2, 29);
  v22 = v2[2](v2, 30);
  v13 = v2[2](v2, 31);
  v12 = v2[2](v2, 32);
  v11 = v2[2](v2, 33);
  v10 = v2[2](v2, 34);
  v9 = v2[2](v2, 35);
  v3 = v2[2](v2, 36);
  v8 = v2[2](v2, 37);
  v4 = v2[2](v2, 38);
  v5 = v2[2](v2, 39);
  v6 = v2[2](v2, 40);
  v21 = [v20 stringWithFormat:@"<%@ %p> {\n\t.DpadUp: %@\n\t.DpadDown: %@\n\t.DpadLeft: %@\n\t.DpadRight: %@\n\t.ButtonA: %@\n\t.ButtonB: %@\n\t.ButtonX: %@\n\t.ButtonY: %@\n\t.LeftShoulder: %@\n\t.RightShoulder: %@\n\t.LeftThumbstickUp: %@\n\t.LeftThumbstickDown: %@\n\t.LeftThumbstickLeft: %@\n\t.LeftThumbstickRight: %@\n\t.RightThumbstickUp: %@\n\t.RightThumbstickDown: %@\n\t.RightThumbstickLeft: %@\n\t.RightThumbstickRight: %@\n\t.LeftTrigger: %@\n\t.RightTrigger: %@\n\t.LeftThumbstickButton: %@\n\t.RightThumbstickButton: %@\n\t.ButtonHome: %@\n\t.ButtonMenu: %@\n\t.ButtonOptions: %@\n\t.ButtonSpecial0: %@\n\t.ButtonSpecial1: %@\n\t.ButtonSpecial2: %@\n\t.ButtonSpecial3: %@\n\t.ButtonSpecial4: %@\n\t.ButtonSpecial5: %@\n\t.ButtonSpecial6: %@\n\t.ButtonSpecial7: %@\n\t.ButtonSpecial8: %@\n\t.ButtonSpecial9: %@\n\t.ButtonSpecial10: %@\n\t.ButtonSpecial11: %@\n\t.ButtonSpecial12: %@\n\t.ButtonSpecial13: %@\n\t.ButtonSpecial14: %@\n\t.ButtonShare: %@\n}", v19, self, v46, v48, v44, v47, v42, v45, v43, v40, v41, v38, v39, v36, v37, v35, v34, v33, v32, v31, v29, v30, v28, v27, v17, v26, v25, v24, v16, v23, v15, v14, v22, v13, v12, v11, v10, v9, v3, v8, v4, v5, v6];

  return v21;
}

- (void)setPassRule:(unsigned __int8)a3 forElement:(int64_t)a4 forSourceAtIndex:(unint64_t)a5
{
  sourceCount = self->_sourceCount;
  if (sourceCount <= a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_GCGamepadEventFusion.m" lineNumber:173 description:{@"Invalid sourceIndex (%llu).  Greater than _sourceCount (%llu)", a5, self->_sourceCount}];

    sourceCount = self->_sourceCount;
  }

  if (sourceCount > a5)
  {
    if (a4 >= 47)
    {
      [_GCGamepadEventFusionConfig setPassRule:a2 forElement:self forSourceAtIndex:a4];
    }

    else
    {
      self->_matrix[a5][a4] = a3;
    }
  }
}

- (unsigned)passRuleForElement:(int64_t)a3 forSourceAtIndex:(unint64_t)a4
{
  sourceCount = self->_sourceCount;
  if (sourceCount <= a4)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_GCGamepadEventFusion.m" lineNumber:196 description:{@"Invalid sourceIndex (%llu).  Greater than _sourceCount (%llu)", a4, self->_sourceCount}];

    sourceCount = self->_sourceCount;
  }

  if (sourceCount > a4)
  {
    if (a3 < 47)
    {
      return self->_matrix[a4][a3];
    }

    [(_GCGamepadEventFusionConfig *)a2 passRuleForElement:a3 forSourceAtIndex:?];
  }

  return 0;
}

- (void)enumerateElementsForSourceAtIndex:(unint64_t)a3 withBlock:(id)a4
{
  v7 = a4;
  sourceCount = self->_sourceCount;
  if (sourceCount <= a3)
  {
    v13 = v7;
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_GCGamepadEventFusion.m" lineNumber:211 description:{@"Invalid sourceIndex (%llu).  Greater than _sourceCount (%llu)", a3, self->_sourceCount}];

    v7 = v13;
    sourceCount = self->_sourceCount;
  }

  if (sourceCount > a3)
  {
    v9 = 0;
    v10 = a3;
    v12 = v7;
    do
    {
      (*(v7 + 2))(v12, v9, self->_matrix[v10][v9]);
      v7 = v12;
      ++v9;
    }

    while (v9 != 47);
  }
}

- (void)setPassRule:(uint64_t)a1 forElement:(uint64_t)a2 forSourceAtIndex:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_GCGamepadEventFusion.m" lineNumber:178 description:{@"Invalid element (%llu)", a3}];
}

- (void)passRuleForElement:(uint64_t)a3 forSourceAtIndex:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_GCGamepadEventFusion.m" lineNumber:201 description:{@"Invalid element (%llu)", a3}];
}

@end