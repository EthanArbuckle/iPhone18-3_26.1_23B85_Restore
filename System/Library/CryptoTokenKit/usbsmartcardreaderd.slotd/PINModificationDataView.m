@interface PINModificationDataView
+ (id)createWithInteraction:(id)a3 error:(id *)a4;
+ (unint64_t)lengthFromNumberMessage:(unsigned __int8)a3;
- (NSString)description;
- (unsigned)bMsgIndex2;
- (unsigned)bMsgIndex3;
- (unsigned)lengthByte;
- (unsigned)nodeAddressByte;
- (unsigned)protocolControlByte;
@end

@implementation PINModificationDataView

+ (id)createWithInteraction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 PINMessageIndices];
  v7 = [v6 count];

  v8 = [(PINOperationDataView *)[PINModificationDataView alloc] initWithLength:[PINModificationDataView lengthFromNumberMessage:v7]];
  [(PINOperationDataView *)v8 setBPINOperation:1];
  [v5 initialTimeout];
  [(PINOperationDataView *)v8 setBTimeOut:v9];
  v10 = [v5 PINFormat];
  v29 = 0;
  v11 = [v10 PINFormatStringWithError:&v29];
  v12 = v29;
  [(PINOperationDataView *)v8 setBmFormatString:v11];

  if (v12)
  {
    if (a4)
    {
LABEL_3:
      v13 = v12;
      v14 = 0;
      *a4 = v12;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v15 = [v5 PINFormat];
  -[PINOperationDataView setBmPINBlockString:](v8, "setBmPINBlockString:", [v15 PINBlockString]);

  v16 = [v5 PINFormat];
  v28 = 0;
  v17 = [v16 PINLengthFormatWithError:&v28];
  v12 = v28;
  [(PINOperationDataView *)v8 setBmPINLengthFormat:v17];

  if (v12)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_14;
  }

  -[PINModificationDataView setBInsertionOffsetOld:](v8, "setBInsertionOffsetOld:", [v5 currentPINByteOffset]);
  -[PINModificationDataView setBInsertionOffsetNew:](v8, "setBInsertionOffsetNew:", [v5 newPINByteOffset]);
  v18 = [v5 PINFormat];
  -[PINModificationDataView setWPINMaxExtraDigit:](v8, "setWPINMaxExtraDigit:", [v18 PINMaxExtraDigit]);

  -[PINModificationDataView setBConfirmPIN:](v8, "setBConfirmPIN:", [v5 PINConfirmation]);
  -[PINModificationDataView setBEntryValidationCondition:](v8, "setBEntryValidationCondition:", [v5 PINCompletion]);
  [(PINModificationDataView *)v8 setNumberMessage:v7];
  -[PINModificationDataView setWLangId:](v8, "setWLangId:", [v5 localeID]);
  v19 = [v5 PINMessageIndices];
  if ([v19 count])
  {
    v20 = [v5 PINMessageIndices];
    v21 = [v20 objectAtIndexedSubscript:0];
    -[PINModificationDataView setBMsgIndex1:](v8, "setBMsgIndex1:", [v21 unsignedCharValue]);
  }

  else
  {
    [(PINModificationDataView *)v8 setBMsgIndex1:0];
  }

  v22 = v7;
  if (v7 >= 2u)
  {
    v23 = [v5 PINMessageIndices];
    v24 = [v23 objectAtIndexedSubscript:1];
    -[PINModificationDataView setBMsgIndex2:](v8, "setBMsgIndex2:", [v24 unsignedCharValue]);

    if (v22 != 2)
    {
      v25 = [v5 PINMessageIndices];
      v26 = [v25 objectAtIndexedSubscript:2];
      -[PINModificationDataView setBMsgIndex3:](v8, "setBMsgIndex3:", [v26 unsignedCharValue]);
    }
  }

  [(PINModificationDataView *)v8 setNodeAddressByte:0];
  [(PINModificationDataView *)v8 setProtocolControlByte:0];
  [(PINModificationDataView *)v8 setLengthByte:0];
  v14 = v8;
  v12 = 0;
LABEL_14:

  return v14;
}

+ (unint64_t)lengthFromNumberMessage:(unsigned __int8)a3
{
  v3 = 19;
  if (a3 == 3)
  {
    v3 = 20;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 18;
  }
}

- (NSString)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"{ bTimeOut: 0x%.2x ", -[PINOperationDataView bTimeOut](self, "bTimeOut")];
  [v3 appendFormat:@"bmFormatString: 0x%.2x ", -[PINOperationDataView bmFormatString](self, "bmFormatString")];
  [v3 appendFormat:@"bmPINBlockString: 0x%.2x ", -[PINOperationDataView bmPINBlockString](self, "bmPINBlockString")];
  [v3 appendFormat:@"bmPINLengthFormat: 0x%.2x ", -[PINOperationDataView bmPINLengthFormat](self, "bmPINLengthFormat")];
  [v3 appendFormat:@"bInsertionOffsetOld: 0x%.2x ", -[PINModificationDataView bInsertionOffsetOld](self, "bInsertionOffsetOld")];
  [v3 appendFormat:@"bInsertionOffsetNew: 0x%.2x ", -[PINModificationDataView bInsertionOffsetNew](self, "bInsertionOffsetNew")];
  [v3 appendFormat:@"wPINMaxExtraDigit: 0x%.4x ", -[PINModificationDataView wPINMaxExtraDigit](self, "wPINMaxExtraDigit")];
  [v3 appendFormat:@"bConfirmPIN: 0x%.2x ", -[PINModificationDataView bConfirmPIN](self, "bConfirmPIN")];
  [v3 appendFormat:@"bEntryValidationCondition: 0x%.2x ", -[PINModificationDataView bEntryValidationCondition](self, "bEntryValidationCondition")];
  [v3 appendFormat:@"bNumberMessage: 0x%.2x ", -[PINModificationDataView bNumberMessage](self, "bNumberMessage")];
  [v3 appendFormat:@"wLangId: 0x%.4x ", -[PINModificationDataView wLangId](self, "wLangId")];
  [v3 appendFormat:@"bMsgIndex1: 0x%.2x ", -[PINModificationDataView bMsgIndex1](self, "bMsgIndex1")];
  [v3 appendFormat:@"bMsgIndex2: 0x%.2x ", -[PINModificationDataView bMsgIndex2](self, "bMsgIndex2")];
  [v3 appendFormat:@"bMsgIndex3: 0x%.2x ", -[PINModificationDataView bMsgIndex3](self, "bMsgIndex3")];
  [v3 appendFormat:@"nodeAddressByte: 0x%.2x ", -[PINModificationDataView nodeAddressByte](self, "nodeAddressByte")];
  [v3 appendFormat:@"protocolControlByte: 0x%.2x ", -[PINModificationDataView protocolControlByte](self, "protocolControlByte")];
  [v3 appendFormat:@"lengthByte: 0x%.2x }", -[PINModificationDataView lengthByte](self, "lengthByte")];

  return v3;
}

- (unsigned)bMsgIndex2
{
  if (![(PINModificationDataView *)self bNumberMessage])
  {
    sub_100017934();
  }

  return [(TKDataView *)self uint8:15];
}

- (unsigned)bMsgIndex3
{
  if ([(PINModificationDataView *)self bNumberMessage]!= 3)
  {
    sub_100017A0C();
  }

  return [(TKDataView *)self uint8:16];
}

- (unsigned)nodeAddressByte
{
  v3 = [PINModificationDataView lengthFromNumberMessage:[(PINModificationDataView *)self bNumberMessage]]- 3;

  return [(TKDataView *)self uint8:v3];
}

- (unsigned)protocolControlByte
{
  v3 = [PINModificationDataView lengthFromNumberMessage:[(PINModificationDataView *)self bNumberMessage]]- 2;

  return [(TKDataView *)self uint8:v3];
}

- (unsigned)lengthByte
{
  v3 = [PINModificationDataView lengthFromNumberMessage:[(PINModificationDataView *)self bNumberMessage]]- 1;

  return [(TKDataView *)self uint8:v3];
}

@end