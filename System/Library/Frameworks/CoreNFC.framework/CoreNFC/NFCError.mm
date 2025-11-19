@interface NFCError
+ (id)errorWithCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4;
+ (id)errorWithNFCDError:(id)a3 defaultNFCErrorCode:(int64_t)a4;
- (NFCError)initWithCode:(int64_t)a3 userInfo:(id)a4;
@end

@implementation NFCError

+ (id)errorWithCode:(int64_t)a3
{
  v3 = [[NFCError alloc] initWithCode:a3 userInfo:0];

  return v3;
}

+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = [[NFCError alloc] initWithCode:a3 userInfo:v5];

  return v6;
}

- (NFCError)initWithCode:(int64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  if (a3 > 103)
  {
    v7 = @"NDEF tag write failed";
    v20 = @"Insufficient space on NDEF tag";
    v21 = @"NDEF tag does not contain any NDEF message";
    if (a3 != 403)
    {
      v21 = 0;
    }

    if (a3 != 402)
    {
      v20 = v21;
    }

    if (a3 != 401)
    {
      v7 = v20;
    }

    v22 = @"First NDEF tag read";
    v23 = @"Invalid configuration parameters";
    v24 = @"NDEF tag is read only";
    if (a3 != 400)
    {
      v24 = 0;
    }

    if (a3 != 300)
    {
      v23 = v24;
    }

    if (a3 != 204)
    {
      v22 = v23;
    }

    if (a3 <= 400)
    {
      v7 = v22;
    }

    v13 = @"Session timeout";
    v25 = @"Session invalidated unexpectedly";
    v26 = @"System resource unavailable";
    if (a3 != 203)
    {
      v26 = 0;
    }

    if (a3 != 202)
    {
      v25 = v26;
    }

    if (a3 != 201)
    {
      v13 = v25;
    }

    v27 = @"Tag is not connected";
    v28 = @"Packet length has exceeded the limit";
    v29 = @"Session invalidated by user";
    if (a3 != 200)
    {
      v29 = 0;
    }

    if (a3 != 105)
    {
      v28 = v29;
    }

    if (a3 != 104)
    {
      v27 = v28;
    }

    if (a3 <= 200)
    {
      v13 = v27;
    }

    v19 = a3 <= 203;
  }

  else
  {
    v7 = @"Maximum retries exceeded";
    v8 = @"Tag response error";
    v9 = @"Session invalidated";
    if (a3 != 103)
    {
      v9 = 0;
    }

    if (a3 != 102)
    {
      v8 = v9;
    }

    if (a3 != 101)
    {
      v7 = v8;
    }

    v10 = @"System is ineligible for this operation";
    v11 = @"User has not yet accepted or declined app request to use this service";
    v12 = @"Tag connection lost";
    if (a3 != 100)
    {
      v12 = 0;
    }

    if (a3 != 8)
    {
      v11 = v12;
    }

    if (a3 != 7)
    {
      v10 = v11;
    }

    if (a3 <= 100)
    {
      v7 = v10;
    }

    v13 = @"Invalid parameter length";
    v14 = @"Parameter value is out of bound";
    v15 = @"NFC radio is disabled";
    if (a3 != 6)
    {
      v15 = 0;
    }

    if (a3 != 5)
    {
      v14 = v15;
    }

    if (a3 != 4)
    {
      v13 = v14;
    }

    v16 = @"Feature not supported";
    v17 = @"Missing required entitlement";
    v18 = @"Invalid parameter";
    if (a3 != 3)
    {
      v18 = 0;
    }

    if (a3 != 2)
    {
      v17 = v18;
    }

    if (a3 != 1)
    {
      v16 = v17;
    }

    if (a3 <= 3)
    {
      v13 = v16;
    }

    v19 = a3 <= 6;
  }

  if (v19)
  {
    v30 = v13;
  }

  else
  {
    v30 = v7;
  }

  v31 = objc_alloc(MEMORY[0x277CBEB38]);
  v32 = [v31 initWithObjectsAndKeys:{v30, *MEMORY[0x277CCA450], 0}];
  if ([v6 count])
  {
    [v32 addEntriesFromDictionary:v6];
  }

  v35.receiver = self;
  v35.super_class = NFCError;
  v33 = [(NFCError *)&v35 initWithDomain:@"NFCError" code:a3 userInfo:v32];

  return v33;
}

+ (id)errorWithNFCDError:(id)a3 defaultNFCErrorCode:(int64_t)a4
{
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v7 = [v5 domain];
  v8 = [v7 isEqualToString:@"NFCError"];

  if (v8)
  {
    v9 = v6;
LABEL_10:
    v10 = v9;
    goto LABEL_14;
  }

  v11 = [v6 domain];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
  v13 = [v11 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    v36[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
    v36[1] = *MEMORY[0x277CCA7E8];
    v37[0] = v15;
    v37[1] = v6;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v37;
    v18 = v36;
    goto LABEL_12;
  }

  if ([v6 code] == 28 || objc_msgSend(v6, "code") == 51)
  {
    v14 = 100;
LABEL_9:
    v9 = [NFCError errorWithCode:v14];
    goto LABEL_10;
  }

  if ([v6 code] == 32 || objc_msgSend(v6, "code") == 8)
  {
    v14 = 2;
    goto LABEL_9;
  }

  if ([v6 code] != 29)
  {
    if ([v6 code] == 37)
    {
      v32 = *MEMORY[0x277CCA450];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Tag Not NDEF formatted"];
      v33 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v10 = [NFCError errorWithCode:102 userInfo:v25];

      goto LABEL_24;
    }

    if ([v6 code] == 49)
    {
      v14 = 403;
      goto LABEL_9;
    }

    if ([v6 code] == 46)
    {
      v14 = 400;
      goto LABEL_9;
    }

    if ([v6 code] == 43)
    {
      v14 = 402;
      goto LABEL_9;
    }

    v26 = [v6 code];
    v27 = *MEMORY[0x277CCA450];
    if (v26 == 64)
    {
      v30 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Reader mode prohibit timer"];
      v31 = v15;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v20 = 203;
      goto LABEL_13;
    }

    v28[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Stack Error"];
    v28[1] = *MEMORY[0x277CCA7E8];
    v29[0] = v15;
    v29[1] = v6;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v29;
    v18 = v28;
LABEL_12:
    v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:2];
    v20 = a4;
LABEL_13:
    v10 = [NFCError errorWithCode:v20 userInfo:v19];

    goto LABEL_14;
  }

  v23 = *MEMORY[0x277CCA7E8];
  v34[0] = *MEMORY[0x277CCA450];
  v34[1] = v23;
  v35[0] = @"Tag response error / no response";
  v35[1] = v6;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v10 = [NFCError errorWithCode:102 userInfo:v24];
LABEL_24:

LABEL_14:
  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

@end