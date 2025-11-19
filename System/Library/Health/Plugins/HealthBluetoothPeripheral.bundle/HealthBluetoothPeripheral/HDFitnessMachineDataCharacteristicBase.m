@interface HDFitnessMachineDataCharacteristicBase
+ (id)_buildWithBinaryValue:(id)a3 error:(id *)a4;
+ (id)uuid;
+ (unsigned)flagFieldLength;
- (BOOL)elapsedTimeIsSet;
- (NSArray)allFields;
- (id)generateDatums:(id)a3;
- (id)getBinaryValueWithError:(id *)a3;
- (unsigned)elapsedTime;
@end

@implementation HDFitnessMachineDataCharacteristicBase

+ (id)_buildWithBinaryValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[a1 alloc] _init];
  v7 = [v5 bytes];
  v23 = v7;
  v8 = [v5 length];
  v9 = [a1 flagFieldLength];
  if (v9 == 3)
  {
    v10 = [HDHealthServiceCharacteristic uint24FromData:&v23 before:&v8[v7]];
    goto LABEL_5;
  }

  if (v9 == 2)
  {
    v10 = [HDHealthServiceCharacteristic uint16FromData:&v23 before:&v8[v7]];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v6 allFields];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if ([v17 isIncludedInFlags:v11])
        {
          [v17 setValueWithBytes:&v23 before:&v8[v7]];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }

  return v6;
}

- (id)getBinaryValueWithError:(id *)a3
{
  v4 = +[NSMutableData data];
  v5 = objc_alloc_init(NSMutableSet);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(HDFitnessMachineDataCharacteristicBase *)self allFields];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 correspondingFlagBit];
        if ([v11 flagFieldFlipped])
        {
          v12 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v11 correspondingFlagBit]);
          v13 = [v5 containsObject:v12];

          if ((v13 & 1) == 0)
          {
            v14 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v11 correspondingFlagBit]);
            [v5 addObject:v14];
          }
        }

        v15 = [v11 valueAsData];
        [v4 appendData:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)generateDatums:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &__NSDictionary0__struct;
}

- (BOOL)elapsedTimeIsSet
{
  sub_E7E0();
  sub_E7C4();
  return 0;
}

- (unsigned)elapsedTime
{
  sub_E7E0();
  sub_E7C4();
  return 0;
}

- (NSArray)allFields
{
  sub_E7E0();
  sub_E7C4();
  return &__NSArray0__struct;
}

+ (id)uuid
{
  sub_E7E0();
  sub_E7C4();
  v2 = objc_alloc_init(CBUUID);

  return v2;
}

+ (unsigned)flagFieldLength
{
  sub_E7E0();
  sub_E7C4();
  return 0;
}

@end