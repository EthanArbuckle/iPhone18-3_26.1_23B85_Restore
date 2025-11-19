@interface PINVerificationDataView
+ (id)createWithInteraction:(id)a3 error:(id *)a4;
- (NSString)description;
@end

@implementation PINVerificationDataView

+ (id)createWithInteraction:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 PINByteOffset])
  {
    v6 = sub_100012974();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000178F0(v6);
    }
  }

  v7 = [PINVerificationDataView alloc];
  v8 = [(PINOperationDataView *)v7 initWithLength:qword_10002BF98];
  [(PINOperationDataView *)v8 setBPINOperation:0];
  [v5 initialTimeout];
  [(PINOperationDataView *)v8 setBTimeOut:v9];
  v10 = [v5 PINFormat];
  v25 = 0;
  v11 = [v10 PINFormatStringWithError:&v25];
  v12 = v25;
  [(PINOperationDataView *)v8 setBmFormatString:v11];

  if (v12)
  {
    if (a4)
    {
LABEL_7:
      v13 = v12;
      v14 = 0;
      *a4 = v12;
      goto LABEL_15;
    }
  }

  else
  {
    v15 = [v5 PINFormat];
    -[PINOperationDataView setBmPINBlockString:](v8, "setBmPINBlockString:", [v15 PINBlockString]);

    v16 = [v5 PINFormat];
    v24 = 0;
    v17 = [v16 PINLengthFormatWithError:&v24];
    v12 = v24;
    [(PINOperationDataView *)v8 setBmPINLengthFormat:v17];

    if (!v12)
    {
      v18 = [v5 PINFormat];
      -[PINVerificationDataView setWPINMaxExtraDigit:](v8, "setWPINMaxExtraDigit:", [v18 PINMaxExtraDigit]);

      -[PINVerificationDataView setBEntryValidationCondition:](v8, "setBEntryValidationCondition:", [v5 PINCompletion]);
      v19 = [v5 PINMessageIndices];
      -[PINVerificationDataView setBNumberMessage:](v8, "setBNumberMessage:", [v19 count]);

      -[PINVerificationDataView setWLangId:](v8, "setWLangId:", [v5 localeID]);
      v20 = [v5 PINMessageIndices];
      if ([v20 count])
      {
        v21 = [v5 PINMessageIndices];
        v22 = [v21 objectAtIndexedSubscript:0];
        -[PINVerificationDataView setBMsgIndex:](v8, "setBMsgIndex:", [v22 unsignedCharValue]);
      }

      else
      {
        [(PINVerificationDataView *)v8 setBMsgIndex:0];
      }

      [(PINVerificationDataView *)v8 setNodeAddressByte:0];
      [(PINVerificationDataView *)v8 setProtocolControlByte:0];
      [(PINVerificationDataView *)v8 setLengthByte:0];
      v14 = v8;
      v12 = 0;
      goto LABEL_15;
    }

    if (a4)
    {
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (NSString)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"{ wPINMaxExtraDigit: 0x%.4x ", -[PINVerificationDataView wPINMaxExtraDigit](self, "wPINMaxExtraDigit")];
  [v3 appendFormat:@"bEntryValidationCondition: 0x%.2x ", -[PINVerificationDataView bEntryValidationCondition](self, "bEntryValidationCondition")];
  [v3 appendFormat:@"bNumberMessage: 0x%.2x ", -[PINVerificationDataView bNumberMessage](self, "bNumberMessage")];
  [v3 appendFormat:@"wLangId: 0x%.4x ", -[PINVerificationDataView wLangId](self, "wLangId")];
  [v3 appendFormat:@"bMsgIndex: 0x%.2x ", -[PINVerificationDataView bMsgIndex](self, "bMsgIndex")];
  [v3 appendFormat:@"nodeAddressByte: 0x%.2x ", -[PINVerificationDataView nodeAddressByte](self, "nodeAddressByte")];
  [v3 appendFormat:@"protocolControlByte: 0x%.2x ", -[PINVerificationDataView protocolControlByte](self, "protocolControlByte")];
  [v3 appendFormat:@"lengthByte: 0x%.2x }", -[PINVerificationDataView lengthByte](self, "lengthByte")];

  return v3;
}

@end