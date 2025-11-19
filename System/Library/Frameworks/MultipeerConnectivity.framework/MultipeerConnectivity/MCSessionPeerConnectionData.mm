@interface MCSessionPeerConnectionData
+ (id)connectionDataSegmentWithEncryptionPreference:(int64_t)a3 identitySet:(BOOL)a4 gckSessionConnectionDataBytes:(void *)a5 gckSessionConnectionDataLength:(unint64_t)a6;
- (BOOL)parseConnectionDataBlob:(id)a3;
- (BOOL)parseConnectionDataSegmentWithBytes:(char *)a3 withLength:(unint64_t)a4;
- (MCSessionPeerConnectionData)initWithConnectionDataBlob:(id)a3;
- (void)dealloc;
@end

@implementation MCSessionPeerConnectionData

- (MCSessionPeerConnectionData)initWithConnectionDataBlob:(id)a3
{
  v7.receiver = self;
  v7.super_class = MCSessionPeerConnectionData;
  v4 = [(MCSessionPeerConnectionData *)&v7 init];
  v5 = v4;
  if (v4 && ![(MCSessionPeerConnectionData *)v4 parseConnectionDataBlob:a3])
  {

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MCSessionPeerConnectionData;
  [(MCSessionPeerConnectionData *)&v3 dealloc];
}

+ (id)connectionDataSegmentWithEncryptionPreference:(int64_t)a3 identitySet:(BOOL)a4 gckSessionConnectionDataBytes:(void *)a5 gckSessionConnectionDataLength:(unint64_t)a6
{
  v11[0] = 0x80;
  v8 = a3 & 3;
  if (a4)
  {
    v8 = a3 & 3 | 4;
  }

  v11[1] = v8;
  v12 = bswap32(a6 + 4) >> 16;
  v9 = [MEMORY[0x277CBEB28] dataWithCapacity:?];
  [v9 appendBytes:v11 length:4];
  [v9 appendBytes:a5 length:a6];
  return v9;
}

- (BOOL)parseConnectionDataSegmentWithBytes:(char *)a3 withLength:(unint64_t)a4
{
  [(MCSessionPeerConnectionData *)self setEncryptionPreference:a3[1] & 3];
  [(MCSessionPeerConnectionData *)self setHasIdentitySet:(a3[1] >> 2) & 1];
  if (a4 <= 3)
  {
    v7 = mcs_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MCSessionPeerConnectionData parseConnectionDataSegmentWithBytes:withLength:];
    }
  }

  else
  {
    -[MCSessionPeerConnectionData setGckSessionConnectionData:](self, "setGckSessionConnectionData:", [MEMORY[0x277CBEA90] dataWithBytes:a3 + 4 length:a4 - 4]);
  }

  return a4 > 3;
}

- (BOOL)parseConnectionDataBlob:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [a3 length];
  LOBYTE(v6) = 0;
  if (a3 && v5)
  {
    v7 = [a3 bytes];
    v8 = 0;
    while (1)
    {
      if (v5 - v8 <= 3)
      {
        v14 = mcs_log();
        v6 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          goto LABEL_19;
        }

        [MCSessionPeerConnectionData parseConnectionDataBlob:];
        goto LABEL_18;
      }

      v9 = bswap32(*(v7 + 2));
      v10 = HIWORD(v9);
      if (v5 - v8 < v10)
      {
        break;
      }

      v11 = *v7;
      v12 = *v7 & 0x7F;
      if ((*v7 & 0x7F) != 0)
      {
        v13 = mcs_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v19 = v12;
          _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Unrecognized segmentID [%d] in connection data blob.", buf, 8u);
        }

        if (v11 < 0)
        {
          goto LABEL_18;
        }
      }

      else if (![(MCSessionPeerConnectionData *)self parseConnectionDataSegmentWithBytes:v7 withLength:HIWORD(v9)])
      {
        goto LABEL_18;
      }

      v8 += v10;
      v7 += v10;
      if (v8 >= v5)
      {
        LOBYTE(v6) = 1;
        goto LABEL_19;
      }
    }

    v15 = mcs_log();
    v6 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      goto LABEL_19;
    }

    [MCSessionPeerConnectionData parseConnectionDataBlob:];
LABEL_18:
    LOBYTE(v6) = 0;
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)parseConnectionDataSegmentWithBytes:withLength:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parseConnectionDataBlob:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parseConnectionDataBlob:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end