@interface SKAnimateWarp
+ (id)animateWithWarps:(id)a3 times:(id)a4;
+ (id)animateWithWarps:(id)a3 times:(id)a4 restore:(BOOL)a5;
+ (id)warpTo:(id)a3 duration:(double)a4;
- (SKAnimateWarp)init;
- (SKAnimateWarp)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKAnimateWarp

- (SKAnimateWarp)init
{
  v3.receiver = self;
  v3.super_class = SKAnimateWarp;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

+ (id)warpTo:(id)a3 duration:(double)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v11 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v9 = [SKAnimateWarp animateWithWarps:v6 times:v8];

  return v9;
}

+ (id)animateWithWarps:(id)a3 times:(id)a4
{
  v4 = [SKAnimateWarp animateWithWarps:a3 times:a4 restore:0];

  return v4;
}

+ (id)animateWithWarps:(id)a3 times:(id)a4 restore:(BOOL)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
  if (v9 >= 1 && (v10 = [v8 count], v10 == (v9 & 0x7FFFFFFF)))
  {
    v11 = [v7 objectAtIndexedSubscript:0];
    v34 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = a5;
      v12 = v11;
      obj = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v13 = v7;
      v14 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v14)
      {
        v15 = *v41;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v41 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v40 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"SKAction: 'warps' must be of type SKWarpGeometryGrid"];
              goto LABEL_29;
            }

            v18 = v17;
            v19 = [v18 numberOfRows];
            if (v19 != [v12 numberOfRows] || (v20 = objc_msgSend(v18, "numberOfColumns"), v20 != objc_msgSend(v12, "numberOfColumns")))
            {
              [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"SKAction: 'warps' must all have the same number of rows and columns"];

LABEL_29:
              v27 = 0;
              goto LABEL_30;
            }

            v21 = [v18 copy];
            [obj addObject:v21];
          }

          v14 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = v8;
      v22 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v22)
      {
        v23 = *v37;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v37 != v23)
            {
              objc_enumerationMutation(v13);
            }

            v25 = *(*(&v36 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v25 floatValue];
              if (v26 >= 0.0)
              {
                continue;
              }
            }

            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"SKAction: 'times' must all be increasing floating point values"];
            goto LABEL_29;
          }

          v22 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v27 = objc_alloc_init(SKAnimateWarp);
      objc_storeStrong(&v27->_mycaction->var19, obj);
      v28 = [v13 copy];
      mycaction = v27->_mycaction;
      var20 = mycaction->var20;
      mycaction->var20 = v28;

      v27->_mycaction->var22 = v33;
      v13 = [v13 lastObject];
      [v13 floatValue];
      [(SKAction *)v27 setDuration:v31];
LABEL_30:
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"SKAction: 'warps' must be of type SKWarpGeometryGrid"];
      v27 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"SKAction: 'warps' and 'times' arrays must have non-zero and equal counts"];
    v27 = 0;
  }

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SKAnimateWarp;
  [(SKAction *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_mycaction->var22 forKey:@"_restore"];
  [v4 encodeObject:self->_mycaction->var19 forKey:@"_grids"];
  [v4 encodeObject:self->_mycaction->var20 forKey:@"_times"];
}

- (SKAnimateWarp)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKAnimateWarp;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SKAnimateWarp;
  v4 = [(SKAction *)&v6 copyWithZone:a3];
  objc_storeStrong((v4[2] + 120), self->_mycaction->var20);
  objc_storeStrong((v4[2] + 112), self->_mycaction->var19);
  *(v4[2] + 136) = self->_mycaction->var22;
  return v4;
}

@end