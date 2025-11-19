@interface _GCGamepadEventImpl
- (BOOL)hasValidValueForElement:(int64_t)a3;
- (NSString)debugDescription;
- (_GCGamepadEventImpl)initWithGamepadEvent:(id)a3;
- (_GCGamepadEventImpl)initWithTimeStamp:(unint64_t)a3 inputs:(float)a4[47] validMask:(unint64_t)a5;
- (float)floatValueForElement:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setFloatValue:(float)a3 forElement:(int64_t)a4;
@end

@implementation _GCGamepadEventImpl

- (_GCGamepadEventImpl)initWithTimeStamp:(unint64_t)a3 inputs:(float)a4[47] validMask:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = _GCGamepadEventImpl;
  result = [(_GCGamepadEventImpl *)&v10 init];
  if (result)
  {
    v9 = 0;
    result->_timestamp = a3;
    result->_data.mask = a5;
    do
    {
      result->_data.buttons[v9] = a4[v9];
      ++v9;
    }

    while (v9 != 47);
  }

  return result;
}

- (_GCGamepadEventImpl)initWithGamepadEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _GCGamepadEventImpl;
  v5 = [(_GCGamepadEventImpl *)&v9 init];
  if (v5)
  {
    v6 = 0;
    v5->_timestamp = [v4 timestamp];
    do
    {
      v5->_data.mask |= [v4 hasValidValueForElement:v6] << v6;
      [v4 floatValueForElement:v6];
      v5->_data.buttons[v6++] = v7;
    }

    while (v6 != 47);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  result = objc_opt_new();
  *(result + 1) = self->_timestamp;
  v5 = *&self->_data.buttons[34];
  v6 = *&self->_data.buttons[38];
  v7 = *&self->_data.buttons[42];
  *(result + 26) = *&self->_data.buttons[46];
  *(result + 11) = v6;
  *(result + 12) = v7;
  *(result + 10) = v5;
  v8 = *&self->_data.buttons[18];
  v9 = *&self->_data.buttons[22];
  v10 = *&self->_data.buttons[30];
  *(result + 8) = *&self->_data.buttons[26];
  *(result + 9) = v10;
  *(result + 6) = v8;
  *(result + 7) = v9;
  v11 = *&self->_data.buttons[2];
  v12 = *&self->_data.buttons[6];
  v13 = *&self->_data.buttons[14];
  *(result + 4) = *&self->_data.buttons[10];
  *(result + 5) = v13;
  *(result + 2) = v11;
  *(result + 3) = v12;
  *(result + 1) = *&self->_data.mask;
  return result;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(_GCGamepadEventImpl *)self floatValueForElement:0];
  v86 = v5;
  [(_GCGamepadEventImpl *)self floatValueForElement:1];
  v85 = v6;
  [(_GCGamepadEventImpl *)self floatValueForElement:2];
  v84 = v7;
  [(_GCGamepadEventImpl *)self floatValueForElement:3];
  v83 = v8;
  [(_GCGamepadEventImpl *)self floatValueForElement:4];
  v82 = v9;
  [(_GCGamepadEventImpl *)self floatValueForElement:5];
  v81 = v10;
  [(_GCGamepadEventImpl *)self floatValueForElement:6];
  v80 = v11;
  [(_GCGamepadEventImpl *)self floatValueForElement:7];
  v79 = v12;
  [(_GCGamepadEventImpl *)self floatValueForElement:8];
  v78 = v13;
  [(_GCGamepadEventImpl *)self floatValueForElement:9];
  v77 = v14;
  [(_GCGamepadEventImpl *)self floatValueForElement:10];
  v76 = v15;
  [(_GCGamepadEventImpl *)self floatValueForElement:11];
  v75 = v16;
  [(_GCGamepadEventImpl *)self floatValueForElement:12];
  v74 = v17;
  [(_GCGamepadEventImpl *)self floatValueForElement:13];
  v73 = v18;
  [(_GCGamepadEventImpl *)self floatValueForElement:14];
  v72 = v19;
  [(_GCGamepadEventImpl *)self floatValueForElement:15];
  v71 = v20;
  [(_GCGamepadEventImpl *)self floatValueForElement:16];
  v70 = v21;
  [(_GCGamepadEventImpl *)self floatValueForElement:17];
  v69 = v22;
  [(_GCGamepadEventImpl *)self floatValueForElement:18];
  v68 = v23;
  [(_GCGamepadEventImpl *)self floatValueForElement:19];
  v67 = v24;
  [(_GCGamepadEventImpl *)self floatValueForElement:20];
  v66 = v25;
  [(_GCGamepadEventImpl *)self floatValueForElement:21];
  v65 = v26;
  [(_GCGamepadEventImpl *)self floatValueForElement:22];
  v64 = v27;
  [(_GCGamepadEventImpl *)self floatValueForElement:23];
  v63 = v28;
  [(_GCGamepadEventImpl *)self floatValueForElement:24];
  v62 = v29;
  [(_GCGamepadEventImpl *)self floatValueForElement:25];
  v61 = v30;
  [(_GCGamepadEventImpl *)self floatValueForElement:26];
  v60 = v31;
  [(_GCGamepadEventImpl *)self floatValueForElement:27];
  v59 = v32;
  [(_GCGamepadEventImpl *)self floatValueForElement:28];
  v58 = v33;
  [(_GCGamepadEventImpl *)self floatValueForElement:29];
  v57 = v34;
  [(_GCGamepadEventImpl *)self floatValueForElement:30];
  v56 = v35;
  [(_GCGamepadEventImpl *)self floatValueForElement:31];
  v55 = v36;
  [(_GCGamepadEventImpl *)self floatValueForElement:32];
  v38 = v37;
  [(_GCGamepadEventImpl *)self floatValueForElement:33];
  v40 = v39;
  [(_GCGamepadEventImpl *)self floatValueForElement:34];
  v42 = v41;
  [(_GCGamepadEventImpl *)self floatValueForElement:35];
  v44 = v43;
  [(_GCGamepadEventImpl *)self floatValueForElement:36];
  v46 = v45;
  [(_GCGamepadEventImpl *)self floatValueForElement:37];
  v48 = v47;
  [(_GCGamepadEventImpl *)self floatValueForElement:38];
  v50 = v49;
  [(_GCGamepadEventImpl *)self floatValueForElement:39];
  v52 = v51;
  [(_GCGamepadEventImpl *)self floatValueForElement:40];
  return [v3 stringWithFormat:@"<%@ %p> {\n\t.DpadUp: %f\n\t.DpadDown: %f\n\t.DpadLeft: %f\n\t.DpadRight: %f\n\t.ButtonA: %f\n\t.ButtonB: %f\n\t.ButtonX: %f\n\t.ButtonY: %f\n\t.LeftShoulder: %f\n\t.RightShoulder: %f\n\t.LeftThumbstickUp: %f\n\t.LeftThumbstickDown: %f\n\t.LeftThumbstickLeft: %f\n\t.LeftThumbstickRight: %f\n\t.RightThumbstickUp: %f\n\t.RightThumbstickDown: %f\n\t.RightThumbstickLeft: %f\n\t.RightThumbstickRight: %f\n\t.LeftTrigger: %f\n\t.RightTrigger: %f\n\t.LeftThumbstickButton: %f\n\t.RightThumbstickButton: %f\n\t.ButtonHome: %f\n\t.ButtonMenu: %f\n\t.ButtonOptions: %f\n\t.ButtonSpecial0: %f\n\t.ButtonSpecial1: %f\n\t.ButtonSpecial2: %f\n\t.ButtonSpecial3: %f\n\t.ButtonSpecial4: %f\n\t.ButtonSpecial5: %f\n\t.ButtonSpecial6: %f\n\t.ButtonSpecial7: %f\n\t.ButtonSpecial8: %f\n\t.ButtonSpecial9: %f\n\t.ButtonSpecial10: %f\n\t.ButtonSpecial11: %f\n\t.ButtonSpecial12: %f\n\t.ButtonSpecial13: %f\n\t.ButtonSearch: %f\n\t.ButtonShare: %f\n}", v4, self, *&v86, *&v85, *&v84, *&v83, *&v82, *&v81, *&v80, *&v79, *&v78, *&v77, *&v76, *&v75, *&v74, *&v73, *&v72, *&v71, *&v70, *&v69, *&v68, *&v67, *&v66, *&v65, *&v64, *&v63, *&v62, *&v61, *&v60, *&v59, *&v58, *&v57, *&v56, *&v55, *&v38, *&v40, *&v42, *&v44, *&v46, *&v48, *&v50, *&v52, v53];
}

- (BOOL)hasValidValueForElement:(int64_t)a3
{
  if (a3 > 46)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_GCGamepadEventImpl.m" lineNumber:214 description:@"Unknown element"];

    LOBYTE(v4) = 0;
  }

  else
  {
    return (self->_data.mask >> a3) & 1;
  }

  return v4;
}

- (float)floatValueForElement:(int64_t)a3
{
  if (a3 <= 46)
  {
    return self->_data.buttons[a3];
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"_GCGamepadEventImpl.m" lineNumber:223 description:@"Unknown element"];

  return 0.0;
}

- (void)setFloatValue:(float)a3 forElement:(int64_t)a4
{
  if (a4 > 46)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_GCGamepadEventImpl.m" lineNumber:233 description:@"Unknown element"];
  }

  else
  {
    self->_data.mask |= 1 << a4;
    self->_data.buttons[a4] = a3;
  }
}

@end