@interface AVTimecode
- (AVTimecode)initWithTimecodeString:(id)string;
- (BOOL)stringIsValidNumericValue:(id)value;
- (void)setFrameDuration:(id *)duration;
- (void)setTimecodeStruct:(CVSMPTETime *)struct;
@end

@implementation AVTimecode

- (void)setFrameDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_frameDuration.epoch = duration->var3;
  *&self->_frameDuration.value = v3;
}

- (void)setTimecodeStruct:(CVSMPTETime *)struct
{
  v3 = *&struct->subframes;
  *&self->_timecodeStruct.hours = *&struct->hours;
  *&self->_timecodeStruct.subframes = v3;
}

- (BOOL)stringIsValidNumericValue:(id)value
{
  v3 = MEMORY[0x1E696AB08];
  valueCopy = value;
  decimalDigitCharacterSet = [v3 decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  v7 = [valueCopy rangeOfCharacterFromSet:invertedSet];
  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (AVTimecode)initWithTimecodeString:(id)string
{
  v25 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v23.receiver = self;
  v23.super_class = AVTimecode;
  v5 = [(AVTimecode *)&v23 init];
  if (v5)
  {
    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v7 = [stringCopy componentsSeparatedByCharactersInSet:punctuationCharacterSet];

    v19 = 0u;
    v20 = 0u;
    v8 = [v7 count] == 4;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v8 &= [(AVTimecode *)v5 stringIsValidNumericValue:*(*(&v19 + 1) + 8 * v13++), v19];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    if (v8)
    {
      v14 = [v9 objectAtIndex:3];
      v5->_timecodeStruct.frames = [v14 intValue];

      v15 = [v9 objectAtIndex:2];
      v5->_timecodeStruct.seconds = [v15 intValue];

      v16 = [v9 objectAtIndex:1];
      v5->_timecodeStruct.minutes = [v16 intValue];

      v17 = [v9 objectAtIndex:0];
      v5->_timecodeStruct.hours = [v17 intValue];
    }

    else
    {
      v17 = v5;
      v5 = 0;
    }
  }

  return v5;
}

@end