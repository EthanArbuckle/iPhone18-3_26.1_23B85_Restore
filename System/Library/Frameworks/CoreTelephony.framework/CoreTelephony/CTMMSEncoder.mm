@interface CTMMSEncoder
+ (id)decodeMessageFromData:(id)data;
+ (id)decodeMessageFromData:(id)data data:(id)a4;
+ (id)decodeSmsFromData:(id)data;
+ (id)decodeSmsFromData:(id)data data:(id)a4;
+ (id)encodeMessage:(id)message;
+ (id)encodeSms:(id)sms;
@end

@implementation CTMMSEncoder

+ (id)decodeSmsFromData:(id)data
{
  dataCopy = data;
  v5 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];
  v6 = [self decodeSmsFromData:v5 data:dataCopy];

  return v6;
}

+ (id)decodeSmsFromData:(id)data data:(id)a4
{
  dataCopy = data;
  v6 = a4;
  memset(&v32, 0, sizeof(v32));
  v33 = 0;
  memset(&v31, 0, sizeof(v31));
  memset(&v30, 0, sizeof(v30));
  memset(&__p, 0, sizeof(__p));
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  MMSPduDecoder::MMSPduDecoder(v27, [v6 bytes], objc_msgSend(v6, "length"), 1);
  if (MMSPduDecoder::decodeSms(v27, &v33, &v32, &v31, &v30, &__p))
  {
    v7 = [CTMessage alloc];
    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v33];
    v9 = [(CTMessage *)v7 initWithDate:v8];

    [(CTMessage *)v9 setContext:dataCopy];
    [(CTMessage *)v9 setMessageType:1];
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v32;
    }

    else
    {
      v10 = v32.__r_.__value_.__r.__words[0];
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    if ([CTPhoneNumber isValidPhoneNumber:v11])
    {
      +[CTPhoneNumber phoneNumberWithDigits:digits:countryCode:](CTPhoneNumber, "phoneNumberWithDigits:digits:countryCode:", [dataCopy slotID], v11, @"1");
    }

    else
    {
      [CTAsciiAddress asciiAddressWithString:v11];
    }
    v12 = ;
    [(CTMessage *)v9 setSender:v12];

    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      slotID = [dataCopy slotID];
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v30;
      }

      else
      {
        v15 = v30.__r_.__value_.__r.__words[0];
      }

      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
      v17 = [CTPhoneNumber phoneNumberWithDigits:slotID digits:v16 countryCode:@"1"];
      [(CTMessage *)v9 setServiceCenter:v17];
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v31;
    }

    else
    {
      v18 = v31.__r_.__value_.__r.__words[0];
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
    v20 = [(CTMessage *)v9 addText:v19];

    v21 = objc_alloc(MEMORY[0x1E696AFB0]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
    v24 = [v21 initWithUUIDString:v23];

    [(CTMessage *)v9 setUniqueIdentifier:v24];
    v26 = 0;
    if (MMSPduDecoder::decodeWspIntegerValue(v27, &v26))
    {
      [(CTMessage *)v9 setReplaceMessage:v26];
    }
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1865E04F0](v27);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return v9;
}

+ (id)encodeSms:(id)sms
{
  v69 = *MEMORY[0x1E69E9840];
  smsCopy = sms;
  memset(v68, 0, sizeof(v68));
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  memset(v52, 0, sizeof(v52));
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v53 = 0;
  v37 = 0;
  recipients = [smsCopy recipients];
  v5 = [recipients objectAtIndex:0];
  canonicalFormat = [v5 canonicalFormat];

  if ([canonicalFormat getCString:&v53 maxLength:255 encoding:4])
  {
    items = [smsCopy items];
    v8 = [items objectAtIndex:0];

    __dst = 0;
    v35 = 0;
    v36 = 0;
    data = [v8 data];
    v10 = data;
    bytes = [data bytes];
    data2 = [v8 data];
    v13 = [data2 length];
    v14 = v13;
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v36) = v13;
    if (v13)
    {
      memmove(&__dst, bytes, v13);
    }

    *(&__dst + v14) = 0;

    serviceCenter = [smsCopy serviceCenter];
    v18 = serviceCenter == 0;

    if (v18 || ([smsCopy serviceCenter], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "formatForCallingCountry:", @"1"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "getCString:maxLength:encoding:", &v37, 255, 4), v20, v19, (v21 & 1) != 0))
    {
      v22 = HIBYTE(v36);
      v23 = SHIBYTE(v36);
      if (v36 < 0)
      {
        v22 = v35;
      }

      if (v22)
      {
        v33 = 0;
        *__p = 0u;
        v32 = 0u;
        MMSPduEncoder::MMSPduEncoder(__p);
        if (v23 >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        MMSPduEncoder::encodeSms(__p, 0, &v53, p_dst, &v37, "");
        if (v32 >= 0)
        {
          v25 = &__p[1];
        }

        else
        {
          v25 = __p[1];
        }

        if (v32 >= 0)
        {
          v26 = HIBYTE(v32);
        }

        else
        {
          v26 = v32;
        }

        v16 = [MEMORY[0x1E695DEF0] dataWithBytes:v25 length:v26];
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[1]);
        }

        goto LABEL_32;
      }

      v28 = sMmsPduLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        +[CTMMSEncoder encodeSms:];
      }
    }

    else
    {
      v27 = sMmsPduLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[CTMMSEncoder encodeSms:];
      }
    }

    v16 = 0;
LABEL_32:
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__dst);
    }

    goto LABEL_35;
  }

  v15 = sMmsPduLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    +[CTMMSEncoder encodeSms:];
  }

  v16 = 0;
LABEL_35:

  v29 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)encodeMessage:(id)message
{
  v23 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  *buf = 0;
  MobileUser = _CFStringGetMobileUser();
  *v19 = CFPreferencesCopyValue(@"MMS", @"com.apple.carrier_1", MobileUser, *MEMORY[0x1E695E898]);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(buf, v19);
  if (*buf)
  {
    *v19 = 0;
    Value = CFDictionaryGetValue(*buf, @"MimeEncodingHint");
    ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(v19, &Value);
    if (*v19)
    {
      if (CFEqual(@"UTF8", *v19))
      {
        v5 = 134217984;
      }

      else
      {
        v5 = -1;
      }

      v17 = v5;
      if (*v19)
      {
        CFRelease(*v19);
      }
    }

    else
    {
      v17 = -1;
    }

    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  else
  {
    v17 = -1;
  }

  v6 = sMmsPduLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&dword_182E9B000, v6, OS_LOG_TYPE_DEFAULT, "*****************Using mime encoding hint: %u***********************\n", buf, 8u);
  }

  if ([messageCopy messageType] == 1)
  {
    v7 = [self encodeSms:messageCopy];
  }

  else
  {
    v22 = 0;
    *buf = 0u;
    v21 = 0u;
    MMSPduEncoder::MMSPduEncoder(buf);
    items = [messageCopy items];
    v9 = [items count] == 0;

    if (v9)
    {
      v12 = sMmsPduLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CTMMSEncoder encodeMessage:];
      }
    }

    else
    {
      recipients = [messageCopy recipients];
      v11 = [recipients count] == 0;

      if (!v11)
      {
        operator new();
      }

      v13 = sMmsPduLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[CTMMSEncoder encodeMessage:];
      }
    }

    v7 = 0;
    if (SHIBYTE(v21) < 0)
    {
      operator delete(*&buf[8]);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)decodeMessageFromData:(id)data
{
  dataCopy = data;
  v5 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];
  v6 = [self decodeMessageFromData:v5 data:dataCopy];

  return v6;
}

+ (id)decodeMessageFromData:(id)data data:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  data;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6 = a4;
  MMSPduDecoder::MMSPduDecoder(v7, [v6 bytes], objc_msgSend(v6, "length"), 1);
  MMSPduDecoder::decodeMessage(v7);
}

@end