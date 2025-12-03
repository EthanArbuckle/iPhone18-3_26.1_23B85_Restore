@interface _GCHapticParameterCurve
- (_GCHapticParameterCurve)initWithHapticCommand:(const void *)command;
@end

@implementation _GCHapticParameterCurve

- (_GCHapticParameterCurve)initWithHapticCommand:(const void *)command
{
  v34 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = _GCHapticParameterCurve;
  v4 = [(_GCHapticParameterCurve *)&v31 init];
  if (!v4)
  {
    goto LABEL_41;
  }

  array = [MEMORY[0x1E695DF70] array];
  curve = v4->_curve;
  v4->_curve = array;

  v8 = *(command + 8);
  v9 = *(command + 6);
  v10 = *(command + 4);
  if (v9 <= 1019)
  {
    if (v9 <= 1010)
    {
      switch(v9)
      {
        case 1000:
          v11 = 5000;
          goto LABEL_33;
        case 1001:
          v11 = 5001;
          goto LABEL_33;
        case 1010:
          v11 = 73;
          goto LABEL_33;
      }
    }

    else
    {
      if (v9 <= 1012)
      {
        if (v9 == 1011)
        {
          v11 = 75;
        }

        else
        {
          v11 = 72;
        }

        goto LABEL_33;
      }

      if (v9 == 1013)
      {
        v11 = 5004;
        goto LABEL_33;
      }

      if (v9 == 1015)
      {
        v11 = 5011;
        goto LABEL_33;
      }
    }

LABEL_24:
    v11 = *(command + 6);
    if (v9 > 0xFF)
    {
      v11 = 0;
    }

    goto LABEL_33;
  }

  v11 = 0;
  if (v9 <= 2009)
  {
    switch(v9)
    {
      case 1020:
        goto LABEL_33;
      case 2000:
        v11 = 5002;
        goto LABEL_33;
      case 2001:
        v11 = 5003;
        goto LABEL_33;
    }

    goto LABEL_24;
  }

  if (v9 > 2011)
  {
    if (v9 == 2012)
    {
      v11 = 81;
      goto LABEL_33;
    }

    if (v9 == 2020)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  if (v9 == 2010)
  {
    v11 = 79;
  }

  else
  {
    v11 = 80;
  }

LABEL_33:
  v12 = (v8 - 1);
  if (v8 != 1)
  {
    v13 = (command + 48);
    *&v7 = 138412290;
    v25 = v7;
    do
    {
      v14 = *(v13 - 2);
      v15 = *(command + 1);
      v16 = v15 + *(v13 - 3);
      v17 = *v13;
      v18 = v15 + *(v13 - 1);
      v27 = v16;
      v28 = v18;
      v26[0] = v10;
      v26[1] = v11;
      v29 = v14;
      v30 = v17;
      if (gc_isInternalBuild())
      {
        v21 = getGCHapticsLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = hapticParamCurveSegmentToString(v26);
          *buf = v25;
          v33 = v22;
          _os_log_impl(&dword_1D2CD5000, v21, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v19 = v4->_curve;
      v20 = [MEMORY[0x1E696B098] valueWithBytes:v26 objCType:{"{?=II{?=dddd}}", v25}];
      [(NSMutableArray *)v19 addObject:v20];

      v13 += 2;
      --v12;
    }

    while (v12);
  }

LABEL_41:
  v23 = *MEMORY[0x1E69E9840];
  return v4;
}

@end