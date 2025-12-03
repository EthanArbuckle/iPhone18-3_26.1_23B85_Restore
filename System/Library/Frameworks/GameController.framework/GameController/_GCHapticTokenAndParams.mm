@interface _GCHapticTokenAndParams
- (_GCHapticTokenAndParams)initWithHapticCommand:(const void *)command;
@end

@implementation _GCHapticTokenAndParams

- (_GCHapticTokenAndParams)initWithHapticCommand:(const void *)command
{
  v20.receiver = self;
  v20.super_class = _GCHapticTokenAndParams;
  v4 = [(_GCHapticTokenAndParams *)&v20 init];
  if (v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    params = v4->_params;
    v4->_params = array;

    v4->_token = *(command + 4);
    v7 = *(command + 56);
    v18[0] = *(command + 40);
    v18[1] = v7;
    v8 = *(command + 88);
    v18[2] = *(command + 72);
    v18[3] = v8;
    v19 = *(command + 26);
    if (LODWORD(v18[0]))
    {
      if (LODWORD(v18[0]) >= 8)
      {
        v9 = 8;
      }

      else
      {
        v9 = LODWORD(v18[0]);
      }

      v10 = v18 + 2;
      do
      {
        v11 = *(v10 - 1);
        v12 = 330;
        if (v11 > 1014)
        {
          if (v11 > 2009)
          {
            switch(v11)
            {
              case 2010:
                goto LABEL_26;
              case 2011:
LABEL_27:
                v12 = 334;
                goto LABEL_29;
              case 2012:
                goto LABEL_25;
            }
          }

          else
          {
            switch(v11)
            {
              case 1015:
                v12 = 332;
                goto LABEL_29;
              case 2000:
                goto LABEL_29;
              case 2001:
                goto LABEL_17;
            }
          }
        }

        else
        {
          if (v11 <= 1010)
          {
            if (v11 != 1000)
            {
              if (v11 == 1001)
              {
LABEL_17:
                v12 = 331;
              }

              else
              {
                if (v11 != 1010)
                {
                  goto LABEL_30;
                }

LABEL_26:
                v12 = 333;
              }
            }

LABEL_29:
            v13 = v4->_params;
            v14 = [FixedParameter alloc];
            LODWORD(v15) = *v10;
            v16 = [(FixedParameter *)v14 initWithIdentifier:v12 value:v15];
            [(NSMutableArray *)v13 addObject:v16];

            goto LABEL_30;
          }

          switch(v11)
          {
            case 1011:
              goto LABEL_27;
            case 1012:
LABEL_25:
              v12 = 335;
              goto LABEL_29;
            case 1013:
              v12 = 336;
              goto LABEL_29;
          }
        }

LABEL_30:
        v10 += 2;
        --v9;
      }

      while (v9);
    }
  }

  return v4;
}

@end