@interface PDProtobufParser
- (BOOL)supportsStreamedParsing;
- (PDProtobufParser)init;
- (id)parseData:(id)a3 expectedClass:(Class)a4 error:(id *)a5;
@end

@implementation PDProtobufParser

- (PDProtobufParser)init
{
  v5.receiver = self;
  v5.super_class = PDProtobufParser;
  v2 = [(PDProtobufParser *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_provider, 0);
  }

  return v3;
}

- (BOOL)supportsStreamedParsing
{
  v2 = self;
  v3 = v2;
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained(&v2->_provider);
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = +[PDUserDefaults sharedDefaults];
  if ([v5 enableResponseStreaming])
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6 && [WeakRetained canParseStreams] && v3->_payloadProcessBlock != 0;

  return v7;
}

- (id)parseData:(id)a3 expectedClass:(Class)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_alloc_init(a4);
  if ([(PDProtobufParser *)self supportsStreamedParsing])
  {
    v10 = v8;
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_provider);
      if (WeakRetained)
      {
        v12 = WeakRetained;
        v44 = a5;
        v45 = v9;
        v43 = v10;
        v13 = [[PBDataReader alloc] initWithData:v10];
        v14 = 0;
        v50 = 0;
        while (1)
        {
          v15 = [v13 position];
          if (v15 >= [v13 length] || (objc_msgSend(v13, "hasError") & 1) != 0)
          {
            goto LABEL_43;
          }

          v16 = objc_autoreleasePoolPush();
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            buf[0] = 0;
            v20 = [v13 position] + 1;
            if (v20 >= [v13 position] && (v21 = objc_msgSend(v13, "position") + 1, v21 <= objc_msgSend(v13, "length")))
            {
              v22 = [v13 data];
              [v22 getBytes:buf range:{objc_msgSend(v13, "position"), 1}];

              [v13 setPosition:{objc_msgSend(v13, "position") + 1}];
            }

            else
            {
              [v13 _setError];
            }

            v19 |= (buf[0] & 0x7F) << v17;
            if ((buf[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            if (v18++ >= 9)
            {
              v24 = 0;
              goto LABEL_19;
            }
          }

          if ([v13 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v19;
          }

LABEL_19:
          if ([v13 hasError])
          {
            v49 = v14;
            v35 = @"Parser encountered PBReader error.";
            v36 = &v49;
            v37 = &v49;
LABEL_38:
            [NSError cls_assignError:v37 code:300 format:v35];
            v27 = *v36;
            goto LABEL_41;
          }

          if ((v24 & 7) == 4)
          {
            goto LABEL_42;
          }

          if ([v12 streamablePayloadClassTagValue] != (v24 >> 3))
          {
            if (PBReaderSkipValueWithTag())
            {
              goto LABEL_42;
            }

            v46[0] = v14;
            v35 = @"Parser encountered error in PBReaderSkipValueWithTag.";
            v36 = v46;
            v37 = v46;
            goto LABEL_38;
          }

          [v12 streamablePayloadClass];
          v25 = objc_opt_new();
          *buf = 0uLL;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            break;
          }

          v47 = v14;
          v26 = [v12 readStreamablePayload:v25 reader:v13 error:&v47];
          v27 = v47;

          if (!v26)
          {
            goto LABEL_40;
          }

          if (v25)
          {
            payloadProcessBlock = self->_payloadProcessBlock;
            v46[1] = v27;
            payloadProcessBlock[2]();
            v29 = v27;

            v27 = v29;
          }

          PBReaderRecallMark();

          objc_autoreleasePoolPop(v16);
          v14 = v27;
          if (v50)
          {
            if (v27)
            {
              goto LABEL_28;
            }

LABEL_44:
            v31 = [v13 hasError] ^ 1;
            a5 = v44;
            v9 = v45;
            goto LABEL_45;
          }
        }

        v48 = v14;
        [NSError cls_assignError:&v48 code:300 format:@"Parser encountered PBReader mark error."];
        v27 = v48;

LABEL_40:
        v14 = v25;
LABEL_41:

        v14 = v27;
LABEL_42:
        objc_autoreleasePoolPop(v16);
LABEL_43:
        v27 = v14;
        if (!v14)
        {
          goto LABEL_44;
        }

LABEL_28:
        a5 = v44;
        v9 = v45;
        if (v44)
        {
          v30 = v27;
          v31 = 0;
          *v44 = v27;
        }

        else
        {
          v31 = 0;
        }

LABEL_45:
        v51 = v31;

        v38 = v51;
        if (v38)
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      [NSError cls_assignError:a5 code:300 format:@"PDProtobuf Parser provider is missing."];
    }

    goto LABEL_47;
  }

  v32 = objc_autoreleasePoolPush();
  v33 = [[PBDataReader alloc] initWithData:v8];
  v34 = [v9 readFrom:v33];

  objc_autoreleasePoolPop(v32);
  if (v34)
  {
LABEL_46:
    v39 = v9;
    goto LABEL_50;
  }

LABEL_47:
  [NSError cls_assignError:a5 code:300 format:@"Error parsing message of class %@ from data %@.", objc_opt_class(), v8];
  CLSInitLog();
  v40 = CLSLogOperations;
  if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_INFO))
  {
    v41 = *a5;
    *buf = 138543362;
    *&buf[4] = v41;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Parser failed: %{public}@", buf, 0xCu);
  }

  v39 = 0;
LABEL_50:

  return v39;
}

@end