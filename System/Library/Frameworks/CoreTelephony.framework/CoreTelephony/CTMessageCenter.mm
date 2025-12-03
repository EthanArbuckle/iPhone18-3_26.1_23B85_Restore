@interface CTMessageCenter
+ (id)sharedMessageCenter;
- ($2825F4736939C4A6D3AD43837233062D)isDeliveryReportsEnabled:(BOOL *)enabled;
- ($2825F4736939C4A6D3AD43837233062D)isMmsEnabledForSub:(id)sub enabled:(BOOL *)enabled;
- ($2825F4736939C4A6D3AD43837233062D)sendMMS:(id)s;
- ($2825F4736939C4A6D3AD43837233062D)sendMMSFromData:(id)data messageId:(unsigned int)id subSlot:(int64_t)slot;
- ($2825F4736939C4A6D3AD43837233062D)sendSMS:(id)s withMoreToFollow:(BOOL)follow trackingID:(unsigned int *)d;
- (BOOL)getCharacterCount:(int64_t *)count andMessageSplitThreshold:(int64_t *)threshold forSmsText:(id)text;
- (BOOL)getCharacterCountForSub:(id)sub count:(int64_t *)count andMessageSplitThreshold:(int64_t *)threshold forSmsText:(id)text;
- (BOOL)isMmsConfigured;
- (BOOL)isMmsConfiguredForSub:(id)sub;
- (BOOL)isMmsEnabled;
- (BOOL)sendBinarySMS:(id)s trackingID:(unsigned int *)d;
- (BOOL)sendSMSWithText:(id)text serviceCenter:(id)center toAddress:(id)address trackingID:(unsigned int *)d;
- (BOOL)sendSMSWithText:(id)text text:(id)a4 serviceCenter:(id)center toAddress:(id)address;
- (BOOL)sendSMSWithText:(id)text text:(id)a4 serviceCenter:(id)center toAddress:(id)address trackingID:(unsigned int *)d;
- (BOOL)simulateDeferredMessage;
- (BOOL)simulateSmsReceived:(id)received;
- (CTMessageCenter)init;
- (id)allIncomingMessages;
- (id)decodeMessage:(id)message;
- (int)incomingMessageCount;
- (void)addMessageOfType:(int)type toArray:(id)array withIdsFromArray:(id)fromArray;
- (void)dealloc;
- (void)emergencySessionIntentEnd:(id)end;
- (void)emergencySessionIntentStart:(id)start;
- (void)sendMessageAsSmsToShortCodeRecipients:(id)recipients andReplaceData:(id *)data;
@end

@implementation CTMessageCenter

+ (id)sharedMessageCenter
{
  result = _sharedMessageCenter;
  if (!_sharedMessageCenter)
  {
    result = objc_alloc_init(CTMessageCenter);
    _sharedMessageCenter = result;
  }

  return result;
}

- (CTMessageCenter)init
{
  v9.receiver = self;
  v9.super_class = CTMessageCenter;
  v2 = [(CTMessageCenter *)&v9 init];
  if (v2)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v3 = *MEMORY[0x1E695E480];
    v4 = getprogname();
    v5 = CFStringCreateWithFormat(v3, 0, @"%s-CTMessageCenter", v4);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v2;
}

- (BOOL)isMmsConfigured
{
  v3 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [(CTMessageCenter *)self isMmsConfiguredForSub:v3];
}

- (void)dealloc
{
  if (_messageCenterServerConnection)
  {
    CFRelease(_messageCenterServerConnection);
  }

  v3.receiver = self;
  v3.super_class = CTMessageCenter;
  [(CTMessageCenter *)&v3 dealloc];
}

- ($2825F4736939C4A6D3AD43837233062D)sendSMS:(id)s withMoreToFollow:(BOOL)follow trackingID:(unsigned int *)d
{
  v56 = *MEMORY[0x1E69E9840];
  if (_messageCenterServerConnection)
  {
    followCopy = follow;
    if ([s messageType] == 1)
    {
      if ([objc_msgSend(s "items")])
      {
        if ([objc_msgSend(s "recipients")] == 1)
        {
          if ([s context])
          {
            v8 = [objc_msgSend(s "context")];
          }

          else
          {
            v13 = CTLogMessageCenter();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [CTMessageCenter sendSMS:v13 withMoreToFollow:? trackingID:?];
            }

            v8 = 1;
          }

          v14 = [CTMMSEncoder encodeSms:s];
          if (v14)
          {
            xdict = 0;
            xpc::dict_creator::dict_creator(object);
            xpc::dict_creator::operator()<char const*>("kSmsSendMessage", object, "kRequest", &v49);
            xpc_release(*object);
            xdict = v49;
            v49 = xpc_null_create();
            xpc_release(v49);
            v15 = xpc_int64_create([s messageId]);
            if (!v15)
            {
              v15 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kSmsMessageID", v15);
            v16 = xpc_null_create();
            xpc_release(v15);
            xpc_release(v16);
            v17 = xpc_int64_create(1);
            if (!v17)
            {
              v17 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kSmsMessageType", v17);
            v18 = xpc_null_create();
            xpc_release(v17);
            xpc_release(v18);
            ctu::cf_to_xpc(&value, v14, v19);
            xpc_dictionary_set_value(xdict, "kSmsMessageBody", value);
            v20 = value;
            value = xpc_null_create();
            xpc_release(v20);
            xpc_release(value);
            value = 0;
            v21 = xpc_BOOL_create(followCopy);
            if (!v21)
            {
              v21 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kSmsMoreMessages", v21);
            v22 = xpc_null_create();
            xpc_release(v21);
            xpc_release(v22);
            v23 = xpc_BOOL_create([s bypassSupportedMessageModesCheck]);
            if (!v23)
            {
              v23 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kBypassSupportedMessageModesCheck", v23);
            v24 = xpc_null_create();
            xpc_release(v23);
            xpc_release(v24);
            v25 = xpc_BOOL_create([s appCheckBypassForCriticalMessaging]);
            if (!v25)
            {
              v25 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kAppCheckBypassForCriticalMessaging", v25);
            v26 = xpc_null_create();
            xpc_release(v25);
            xpc_release(v26);
            v27 = xpc_int64_create(v8);
            if (!v27)
            {
              v27 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kSmsSubInstance", v27);
            v28 = xpc_null_create();
            xpc_release(v27);
            xpc_release(v28);
            v29 = xpc_int64_create([s smsType]);
            if (!v29)
            {
              v29 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kSmsType", v29);
            v30 = xpc_null_create();
            xpc_release(v29);
            xpc_release(v30);
            v31 = CTLogMessageCenter();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = CTSubscriptionSlotAsString(v8);
              messageId = [s messageId];
              v34 = [(ctu *)v14 length];
              *object = 136315906;
              *&object[4] = v32;
              *&object[12] = 2048;
              *&object[14] = messageId;
              if (followCopy)
              {
                v35 = "true";
              }

              else
              {
                v35 = "false";
              }

              v52 = 2048;
              v53 = v34;
              v54 = 2080;
              v55 = v35;
              _os_log_impl(&dword_182E9B000, v31, OS_LOG_TYPE_INFO, "SMS info context:[%s] Id:[%lu] Length:[%lu] more:[%s]", object, 0x2Au);
            }

            v49 = 0;
            v49 = xpc_null_create();
            v36 = SendXpcMessage(_messageCenterServerConnection, &xdict, &v49);
            if (MEMORY[0x1865E16C0](v49) == MEMORY[0x1E69E9E80])
            {
              if (xpc_dictionary_get_value(v49, "kSmsMessageResult"))
              {
                *object = &v49;
                *&object[8] = "kSmsMessageResult";
                xpc::dict::object_proxy::operator xpc::object(object, &v47);
                v37 = xpc::dyn_cast_or_default(&v47, 0);
                xpc_release(v47);
              }

              else
              {
                v37 = 0;
              }

              if (d)
              {
                *object = &v49;
                *&object[8] = "kSmsMessageID";
                xpc::dict::object_proxy::operator xpc::object(object, &v47);
                *d = xpc::dyn_cast_or_default(&v47, 0xFFFFFFFFLL);
                xpc_release(v47);
              }
            }

            else
            {
              v37 = 0;
            }

            if (HIDWORD(v36) || v37)
            {
              v43 = HIDWORD(v36);
              if (!HIDWORD(v36))
              {
                v44 = CTLogMessageCenter();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  messageId2 = [s messageId];
                  *object = 67109120;
                  *&object[4] = messageId2;
                  _os_log_impl(&dword_182E9B000, v44, OS_LOG_TYPE_INFO, "Queued messageId %u", object, 8u);
                }

                v43 = 0;
                goto LABEL_61;
              }
            }

            else
            {
              v42 = CTLogMessageCenter();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                -[CTMessageCenter sendSMS:withMoreToFollow:trackingID:].cold.4(object, [s messageId], v42);
              }

              v43 = 0xFFFFFFFFLL;
            }

            v46 = CTLogMessageCenter();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              [CTMessageCenter sendSMS:withMoreToFollow:trackingID:];
            }

            v36 = 2;
LABEL_61:
            xpc_release(v49);
            xpc_release(xdict);
            v39 = v43 << 32;
            goto LABEL_43;
          }

          v38 = CTLogMessageCenter();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [CTMessageCenter sendSMS:withMoreToFollow:trackingID:];
          }
        }

        else
        {
          v12 = CTLogMessageCenter();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [CTMessageCenter sendSMS:withMoreToFollow:trackingID:];
          }
        }
      }

      else
      {
        v11 = CTLogMessageCenter();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CTMessageCenter sendSMS:withMoreToFollow:trackingID:];
        }
      }
    }

    else
    {
      v10 = CTLogMessageCenter();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter sendSMS:s withMoreToFollow:v10 trackingID:?];
      }
    }
  }

  else
  {
    v9 = CTLogMessageCenter();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter sendSMS:withMoreToFollow:trackingID:];
    }
  }

  v39 = 0xFFFFFFFF00000000;
  v36 = 2;
LABEL_43:
  v40 = *MEMORY[0x1E69E9840];
  return (v36 | v39);
}

- ($2825F4736939C4A6D3AD43837233062D)sendMMSFromData:(id)data messageId:(unsigned int)id subSlot:(int64_t)slot
{
  v40 = *MEMORY[0x1E69E9840];
  if (_messageCenterServerConnection)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kSmsSendMessage", object, "kRequest", &xdict);
    xpc_release(*object);
    v8 = xdict;
    v34 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    v9 = xpc_int64_create(id);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "kSmsMessageID", v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v11 = xpc_int64_create(2);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "kSmsMessageType", v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    ctu::cf_to_xpc(&value, data, v13);
    xpc_dictionary_set_value(v8, "kSmsMessageBody", value);
    v14 = value;
    value = xpc_null_create();
    xpc_release(v14);
    xpc_release(value);
    value = 0;
    v15 = xpc_BOOL_create(0);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "kSmsMoreMessages", v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
    v17 = xpc_int64_create(slot);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "kSmsSubInstance", v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
    v19 = CTLogMessageCenter();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = CTSubscriptionSlotAsString(slot);
      v21 = [data length];
      *object = 136315906;
      *&object[4] = v20;
      *&object[12] = 2048;
      *&object[14] = id;
      v36 = 2048;
      v37 = v21;
      v38 = 2080;
      v39 = "false";
      _os_log_impl(&dword_182E9B000, v19, OS_LOG_TYPE_INFO, "MMS info context:[%s] Id:[%lu] Length:[%lu] more:[%s]", object, 0x2Au);
    }

    xdict = xpc_null_create();
    v22 = SendXpcMessage(_messageCenterServerConnection, &v34, &xdict);
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kSmsMessageResult"))
    {
      *object = &xdict;
      *&object[8] = "kSmsMessageResult";
      xpc::dict::object_proxy::operator xpc::object(object, &v31);
      v26 = xpc::dyn_cast_or_default(&v31, 0);
      xpc_release(v31);
      v23 = v26 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (HIDWORD(v22))
    {
      v28 = CTLogMessageCenter();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter sendMMSFromData:messageId:subSlot:];
      }

      v27 = v22 & 0xFFFFFFFF00000000;
      v22 = 2;
    }

    else
    {
      if (v23)
      {
        v27 = 0xFFFFFFFF00000000;
      }

      else
      {
        v27 = 0;
      }

      if (v23)
      {
        v22 = 2;
      }
    }

    xpc_release(xdict);
    xpc_release(v34);
    v24 = (v22 | v27);
  }

  else
  {
    v24 = 0xFFFFFFFF00000002;
    v25 = CTLogMessageCenter();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter sendMMSFromData:messageId:subSlot:];
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v24;
}

- (void)sendMessageAsSmsToShortCodeRecipients:(id)recipients andReplaceData:(id *)data
{
  if (recipients)
  {
    recipients = [recipients recipients];
    v8 = [recipients count];
    if (v8 >= 2)
    {
      objectEnumerator = [recipients objectEnumerator];
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!v10)
      {
        return;
      }

      v11 = v10;
      dataCopy = data;
      nextObject = [objectEnumerator nextObject];
      if (nextObject)
      {
        nextObject2 = nextObject;
        do
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([nextObject2 isShortCode])
            {
              [v11 addObject:nextObject2];
              v14 = [objc_msgSend(recipients "items")];
              if (![objc_msgSend(v14 "contentType")] || (v14 = objc_msgSend(objc_msgSend(recipients, "items"), "objectAtIndex:", 1), !objc_msgSend(objc_msgSend(v14, "contentType"), "caseInsensitiveCompare:", @"text/plain")))
              {
                if (v14)
                {
                  if ([v11 count] == v8)
                  {
                    messageId = [recipients messageId];
                  }

                  else
                  {
                    messageId = 999999999;
                  }

                  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(objc_msgSend(v14 length:"data") encoding:{"bytes"), objc_msgSend(objc_msgSend(v14, "data"), "length"), 4}];
                  -[CTMessageCenter sendSMSWithText:text:serviceCenter:toAddress:withID:](self, "sendSMSWithText:text:serviceCenter:toAddress:withID:", [recipients context], v16, 0, objc_msgSend(nextObject2, "canonicalFormat"), messageId);
                }
              }
            }
          }

          nextObject2 = [objectEnumerator nextObject];
        }

        while (nextObject2);
      }

      if ([v11 count])
      {
        [recipients removeRecipientsInArray:v11];
      }

      data = dataCopy;
    }

    v17 = [objc_msgSend(recipients "recipients")];
    if (v17 != v8)
    {
      if (data && v17)
      {

        v18 = [CTMMSEncoder encodeMessage:recipients];
LABEL_23:
        *data = v18;
        return;
      }

      if (!v17)
      {
        [recipients setMessageType:1];
        if (data)
        {

          v18 = 0;
          goto LABEL_23;
        }
      }
    }
  }
}

- ($2825F4736939C4A6D3AD43837233062D)sendMMS:(id)s
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = [CTMMSEncoder encodeMessage:?];
  if (!v21)
  {
    v12 = CTLogMessageCenter();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter sendMMS:];
    }

    goto LABEL_16;
  }

  MobileUser = _CFStringGetMobileUser();
  v6 = CFPreferencesCopyValue(@"SendTextMMSToShortCodeAsSMS", @"com.apple.carrier_1", MobileUser, *MEMORY[0x1E695E898]);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFBooleanGetTypeID() && CFEqual(v7, *MEMORY[0x1E695E4D0]))
    {
      v9 = [objc_msgSend(s "items")];
      items = [s items];
      if (v9 == 1)
      {
        v11 = [items objectAtIndex:0];
      }

      else
      {
        if ([items count] != 2)
        {
          goto LABEL_13;
        }

        v13 = [objc_msgSend(s "items")];
        v14 = [objc_msgSend(s "items")];
        if ([objc_msgSend(v13 "contentType")])
        {
          goto LABEL_13;
        }

        v11 = v14;
      }

      if (![objc_msgSend(v11 "contentType")])
      {
        [(CTMessageCenter *)self sendMessageAsSmsToShortCodeRecipients:s andReplaceData:&v21];
      }
    }

LABEL_13:
    CFRelease(v7);
    if (v21)
    {
      goto LABEL_14;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_20;
  }

LABEL_14:
  if ([s context])
  {
    v15 = [objc_msgSend(s "context")];
  }

  else
  {
    v17 = CTLogMessageCenter();
    v15 = 1;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v15 = 1;
      v18 = CTSubscriptionSlotAsString(1);
      *buf = 136315138;
      v23 = v18;
      _os_log_impl(&dword_182E9B000, v17, OS_LOG_TYPE_INFO, "Forcing MMS to:%s", buf, 0xCu);
    }
  }

  v16 = -[CTMessageCenter sendMMSFromData:messageId:subSlot:](self, "sendMMSFromData:messageId:subSlot:", v21, [s messageId], v15);

LABEL_20:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (int)incomingMessageCount
{
  if (_messageCenterServerConnection)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kSmsGetIncomingMessageCount", object, "kRequest", &v8);
    xpc_release(object[0]);
    v9 = v8;
    v8 = xpc_null_create();
    xpc_release(v8);
    v8 = xpc_null_create();
    if (SendXpcMessage(_messageCenterServerConnection, &v9, &v8) >> 32)
    {
      v4 = CTLogMessageCenter();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter incomingMessageCount];
      }

      v2 = -1;
    }

    else if (MEMORY[0x1865E16C0](v8) == MEMORY[0x1E69E9E80])
    {
      object[0] = &v8;
      object[1] = "kSmsIncomingMessageCount";
      xpc::dict::object_proxy::operator xpc::object(object, &v7);
      v2 = xpc::dyn_cast_or_default(&v7, 0);
      xpc_release(v7);
    }

    else
    {
      v2 = 0;
    }

    xpc_release(v8);
    xpc_release(v9);
  }

  else
  {
    v3 = CTLogMessageCenter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter incomingMessageCount];
    }

    return 0;
  }

  return v2;
}

- (void)addMessageOfType:(int)type toArray:(id)array withIdsFromArray:(id)fromArray
{
  v24 = *MEMORY[0x1E69E9840];
  objectEnumerator = [fromArray objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    if (type == 2)
    {
      v12 = "mms";
    }

    else
    {
      v12 = "sms";
    }

    *&v10 = 134218498;
    v17 = v10;
    do
    {
      v13 = -[CTMessageCenter incomingMessageWithId:](self, "incomingMessageWithId:", [nextObject2 intValue]);
      if (v13)
      {
        [array addObject:v13];
      }

      else
      {
        v14 = CTLogMessageCenter();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          integerValue = [nextObject2 integerValue];
          *buf = v17;
          v19 = integerValue;
          v20 = 1024;
          typeCopy = type;
          v22 = 2080;
          v23 = v12;
          _os_log_error_impl(&dword_182E9B000, v14, OS_LOG_TYPE_ERROR, "couldn't get message %ld, type %d (%s)", buf, 0x1Cu);
        }
      }

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)allIncomingMessages
{
  if (_messageCenterServerConnection)
  {
    object = 0;
    v3 = xpc::dict_creator::dict_creator(&v16);
    xpc::dict_creator::operator()<char const*>("kSmsGetRecievedMessageIds", v3, "kRequest", &v14);
    xpc_release(v16);
    object = v14;
    v14 = xpc_null_create();
    xpc_release(v14);
    v16 = 0;
    v16 = xpc_null_create();
    if (!(SendXpcMessage(_messageCenterServerConnection, &object, &v16) >> 32) && MEMORY[0x1865E16C0](v16) == MEMORY[0x1E69E9E80])
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = 0;
      value = xpc_dictionary_get_value(v16, "kSmsRecievedSmsMessageIds");
      ctu::xpc_to_cf(&cf, value, v9);
      ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(&v14, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v14)
      {
        [(CTMessageCenter *)self addMessageOfType:1 toArray:v7 withIdsFromArray:?];
      }

      cf = 0;
      v10 = xpc_dictionary_get_value(v16, "kSmsRecievedMmsMessageIds");
      ctu::xpc_to_cf(&v12, v10, v11);
      ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(&cf, &v12);
      if (v12)
      {
        CFRelease(v12);
      }

      if (cf)
      {
        [(CTMessageCenter *)self addMessageOfType:2 toArray:v7 withIdsFromArray:?];
      }

      array = v7;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    xpc_release(v16);
    xpc_release(object);
  }

  else
  {
    v5 = CTLogMessageCenter();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter allIncomingMessages];
    }

    return [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (id)decodeMessage:(id)message
{
  v4 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [CTMMSEncoder decodeMessageFromData:v4 data:message];
}

- ($2825F4736939C4A6D3AD43837233062D)isDeliveryReportsEnabled:(BOOL *)enabled
{
  if (enabled)
  {
    *enabled = 0;
  }

  return 0;
}

- (BOOL)isMmsEnabled
{
  v3 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [(CTMessageCenter *)self isMmsConfiguredForSub:v3];
}

- (BOOL)isMmsConfiguredForSub:(id)sub
{
  v31 = *MEMORY[0x1E69E9840];
  if (!_messageCenterServerConnection)
  {
    v11 = CTLogMessageCenter();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter isMmsConfiguredForSub:];
    }

    LOBYTE(v12) = 0;
    goto LABEL_31;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kSmsIsMmsConfigured", object, "kRequest", &v28);
  xpc_release(*object);
  v4 = v28;
  v29 = v28;
  v28 = xpc_null_create();
  xpc_release(v28);
  if (sub)
  {
    slotID = [sub slotID];
    v6 = CTLogMessageCenter();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v7 = CTSubscriptionSlotAsString(slotID);
    *object = 136315138;
    *&object[4] = v7;
    v8 = "MMS configured check requested for slot %s";
    v9 = v6;
    v10 = 12;
  }

  else
  {
    v13 = CTLogMessageCenter();
    slotID = 1;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *object = 0;
    v8 = "MMS configured check slot forced to CTSubscriptionSlotOne";
    slotID = 1;
    v9 = v13;
    v10 = 2;
  }

  _os_log_impl(&dword_182E9B000, v9, OS_LOG_TYPE_INFO, v8, object, v10);
LABEL_11:
  v14 = xpc_int64_create(slotID);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kSmsSubInstance", v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  if ([CTMessageCenter isMmsConfiguredForSub:]::kOnceToken != -1)
  {
    [CTMessageCenter isMmsConfiguredForSub:];
  }

  if ([CTMessageCenter isMmsConfiguredForSub:]::kMaxRetries)
  {
    v16 = 3;
  }

  else
  {
    v16 = 1;
  }

  v17 = MEMORY[0x1E69E9E80];
  while (1)
  {
    v28 = 0;
    v28 = xpc_null_create();
    v18 = SendXpcMessage(_messageCenterServerConnection, &v29, &v28);
    v19 = v18;
    v20 = HIDWORD(v18);
    if (!HIDWORD(v18) && MEMORY[0x1865E16C0](v28) == v17)
    {
      break;
    }

    v21 = CTLogMessageCenter();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *object = 136315650;
      *&object[4] = "kSmsIsMmsConfigured";
      *&object[12] = 1024;
      *&object[14] = v19;
      *&object[18] = 1024;
      *&object[20] = v20;
      _os_log_error_impl(&dword_182E9B000, v21, OS_LOG_TYPE_ERROR, "MMS configured check for slot %s failed (%d, %d) retrying...", object, 0x18u);
    }

    xpc_release(v28);
    if (!--v16)
    {
      LOBYTE(v12) = 0;
      goto LABEL_30;
    }
  }

  *object = &v28;
  *&object[8] = "kSmsMmsIsConfigured";
  xpc::dict::object_proxy::operator xpc::object(object, &v27);
  v12 = xpc::dyn_cast_or_default(&v27, 0);
  xpc_release(v27);
  v22 = CTLogMessageCenter();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = CTSubscriptionSlotAsString(slotID);
    v24 = "NO";
    if (v12)
    {
      v24 = "YES";
    }

    *object = 136315394;
    *&object[4] = v23;
    *&object[12] = 2080;
    *&object[14] = v24;
    _os_log_impl(&dword_182E9B000, v22, OS_LOG_TYPE_INFO, "MMS configured check for slot %s: %s", object, 0x16u);
  }

  xpc_release(v28);
LABEL_30:
  xpc_release(v29);
LABEL_31:
  v25 = *MEMORY[0x1E69E9840];
  return v12;
}

void __41__CTMessageCenter_isMmsConfiguredForSub___block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  theString1 = 0;
  *buf = MGCopyAnswer();
  ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&theString1, buf);
  if (CFStringCompare(theString1, @"iPhone", 0) == kCFCompareEqualTo)
  {
    [CTMessageCenter isMmsConfiguredForSub:]::kMaxRetries = 1;
  }

  v0 = sMsgCtrLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 3;
    if (![CTMessageCenter isMmsConfiguredForSub:]::kMaxRetries)
    {
      v1 = 1;
    }

    *buf = 134217984;
    *&buf[4] = v1;
    _os_log_impl(&dword_182E9B000, v0, OS_LOG_TYPE_DEFAULT, "Configuring max is MMS configured retries as %zu", buf, 0xCu);
  }

  if (theString1)
  {
    CFRelease(theString1);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- ($2825F4736939C4A6D3AD43837233062D)isMmsEnabledForSub:(id)sub enabled:(BOOL *)enabled
{
  if (!_messageCenterServerConnection)
  {
    v6 = CTLogMessageCenter();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter isMmsEnabledForSub:enabled:];
    }

    v7 = 0x3600000000;
    goto LABEL_11;
  }

  if (!enabled)
  {
    v8 = CTLogMessageCenter();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter isMmsEnabledForSub:enabled:];
    }

    v7 = 0x1600000000;
LABEL_11:
    v9 = 1;
    return (v9 | v7);
  }

  if (sub)
  {
    slotID = [sub slotID];
  }

  else
  {
    slotID = 1;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kSmsIsMmsConfigured", object, "kRequest", &v17);
  xpc_release(object[0]);
  v10 = v17;
  v18 = v17;
  v17 = xpc_null_create();
  xpc_release(v17);
  v11 = xpc_int64_create(slotID);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "kSmsSubInstance", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v17 = xpc_null_create();
  v13 = SendXpcMessage(_messageCenterServerConnection, &v18, &v17);
  if (!HIDWORD(v13) && MEMORY[0x1865E16C0](v17) == MEMORY[0x1E69E9E80])
  {
    object[0] = &v17;
    object[1] = "kSmsMmsIsConfigured";
    xpc::dict::object_proxy::operator xpc::object(object, &v16);
    *enabled = xpc::dyn_cast_or_default(&v16, 0);
    xpc_release(v16);
  }

  v7 = v13 & 0xFFFFFFFF00000000;
  xpc_release(v17);
  xpc_release(v18);
  v9 = v13;
  return (v9 | v7);
}

- (BOOL)sendSMSWithText:(id)text text:(id)a4 serviceCenter:(id)center toAddress:(id)address
{
  v25 = *MEMORY[0x1E69E9840];
  if (text && [text slotID] != 1)
  {
    if ([text slotID] != 2)
    {
      v17 = CTLogMessageCenter();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_182E9B000, v17, OS_LOG_TYPE_INFO, "Invalid Slot context", buf, 2u);
      }

      goto LABEL_17;
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = objc_alloc_init(CTMessage);
  v13 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:v11];
  [(CTMessage *)v12 setContext:v13];
  v20 = -1;
  if (!v12)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (a4)
  {
    [(CTMessage *)v12 addText:a4];
  }

  if (!address)
  {

    goto LABEL_17;
  }

  [(CTMessage *)v12 addRecipient:address];
  if (center)
  {
    [(CTMessage *)v12 setServiceCenter:[CTPhoneNumber phoneNumberWithDigits:[(CTXPCServiceSubscriptionContext *)v13 slotID] digits:center countryCode:0]];
  }

  [(CTMessage *)v12 setMessageId:0xFFFFFFFFLL];
  [(CTMessage *)v12 setMessageType:1];
  v14 = [(CTMessageCenter *)self sendSMS:v12 withMoreToFollow:0 trackingID:&v20]== 0;

  v15 = CTLogMessageCenter();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    uTF8String = [address UTF8String];
    *buf = 136315394;
    v22 = uTF8String;
    v23 = 1024;
    v24 = v20;
    _os_log_impl(&dword_182E9B000, v15, OS_LOG_TYPE_INFO, "Tracking sms to destination %s with message id: %u", buf, 0x12u);
  }

LABEL_18:
  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)sendSMSWithText:(id)text serviceCenter:(id)center toAddress:(id)address trackingID:(unsigned int *)d
{
  v11 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [(CTMessageCenter *)self sendSMSWithText:v11 text:text serviceCenter:center toAddress:address trackingID:d];
}

- (BOOL)sendSMSWithText:(id)text text:(id)a4 serviceCenter:(id)center toAddress:(id)address trackingID:(unsigned int *)d
{
  v28 = *MEMORY[0x1E69E9840];
  if (!d)
  {
    goto LABEL_11;
  }

  *d = -1;
  v13 = objc_alloc_init(CTMessage);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  [(CTMessage *)v13 setContext:text];
  if (a4)
  {
    [(CTMessage *)v14 addText:a4];
  }

  if (!address)
  {

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  [(CTMessage *)v14 addRecipient:address];
  if (center)
  {
    -[CTMessage setServiceCenter:](v14, "setServiceCenter:", +[CTPhoneNumber phoneNumberWithDigits:digits:countryCode:](CTPhoneNumber, "phoneNumberWithDigits:digits:countryCode:", [text slotID], center, 0));
  }

  [(CTMessage *)v14 setMessageType:1];
  v15 = [(CTMessageCenter *)self sendSMS:v14 withMoreToFollow:0 trackingID:d]== 0;

  v16 = CTLogMessageCenter();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    uTF8String = [address UTF8String];
    uTF8String2 = [center UTF8String];
    v19 = *d;
    v22 = 136315650;
    v23 = uTF8String;
    v24 = 2080;
    v25 = uTF8String2;
    v26 = 1024;
    v27 = v19;
    _os_log_impl(&dword_182E9B000, v16, OS_LOG_TYPE_INFO, "Tracking sms to destination %s service center %s with message id: %u", &v22, 0x1Cu);
  }

LABEL_12:
  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)getCharacterCountForSub:(id)sub count:(int64_t *)count andMessageSplitThreshold:(int64_t *)threshold forSmsText:(id)text
{
  v27 = *MEMORY[0x1E69E9840];
  if (_messageCenterServerConnection)
  {
    LOBYTE(v7) = 0;
    if (threshold && count && text)
    {
      xpc::dict_creator::dict_creator(&object);
      xpc::dict_creator::operator()<char const*>("kSmsGetCharacterCountAndThresholdForMessage", &object, "kRequest", &v24);
      xpc_release(object);
      v11 = v24;
      v25 = v24;
      v24 = xpc_null_create();
      xpc_release(v24);
      v24 = xpc_null_create();
      ctu::cf_to_xpc(&value, text, v12);
      xpc_dictionary_set_value(v11, "kSmsMessageBody", value);
      v13 = value;
      value = xpc_null_create();
      xpc_release(v13);
      xpc_release(value);
      value = 0;
      if (sub)
      {
        slotID = [sub slotID];
        v15 = CTLogMessageCenter();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = CTSubscriptionSlotAsString(slotID);
          LODWORD(object) = 136315138;
          *(&object + 4) = v16;
          _os_log_impl(&dword_182E9B000, v15, OS_LOG_TYPE_INFO, "Character count requested for Slot %s", &object, 0xCu);
        }
      }

      else
      {
        v17 = CTLogMessageCenter();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CTMessageCenter getCharacterCountForSub:count:andMessageSplitThreshold:forSmsText:];
        }

        slotID = 1;
      }

      v18 = xpc_int64_create(slotID);
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(v11, "kSmsSubInstance", v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
      if (!(SendXpcMessage(_messageCenterServerConnection, &v25, &v24) >> 32) && MEMORY[0x1865E16C0](v24) == MEMORY[0x1E69E9E80])
      {
        *&object = &v24;
        *(&object + 1) = "kDidSucceed";
        xpc::dict::object_proxy::operator xpc::object(&object, &v22);
        v7 = xpc::dyn_cast_or_default(&v22, 0);
        xpc_release(v22);
        if (v7)
        {
          *&object = &v24;
          *(&object + 1) = "kSmsCharacterCount";
          xpc::dict::object_proxy::operator xpc::object(&object, &v22);
          *count = xpc::dyn_cast_or_default(&v22, 0);
          xpc_release(v22);
          *&object = &v24;
          *(&object + 1) = "kSmsThreshold";
          xpc::dict::object_proxy::operator xpc::object(&object, &v22);
          *threshold = xpc::dyn_cast_or_default(&v22, 0);
          xpc_release(v22);
          LOBYTE(v7) = 1;
        }
      }

      else
      {
        LOBYTE(v7) = 0;
      }

      xpc_release(v24);
      xpc_release(v25);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)getCharacterCount:(int64_t *)count andMessageSplitThreshold:(int64_t *)threshold forSmsText:(id)text
{
  v9 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [(CTMessageCenter *)self getCharacterCountForSub:v9 count:count andMessageSplitThreshold:threshold forSmsText:text];
}

- (BOOL)simulateSmsReceived:(id)received
{
  if (_messageCenterServerConnection)
  {
    receivedCopy = received;
    if (received)
    {
      xpc::dict_creator::dict_creator(object);
      xpc::dict_creator::operator()<char const*>("kSimulateSmsReceived", object, "kRequest", &v12);
      xpc_release(object[0]);
      v4 = v12;
      v13 = v12;
      v12 = xpc_null_create();
      xpc_release(v12);
      v12 = xpc_null_create();
      ctu::cf_to_xpc(&value, receivedCopy, v5);
      xpc_dictionary_set_value(v4, "kCTSmsPdu", value);
      v6 = value;
      value = xpc_null_create();
      xpc_release(v6);
      xpc_release(value);
      value = 0;
      if (SendXpcMessage(_messageCenterServerConnection, &v13, &v12) >> 32)
      {
        LOBYTE(receivedCopy) = 0;
      }

      else
      {
        object[0] = &v12;
        object[1] = "kDidSucceed";
        xpc::dict::object_proxy::operator xpc::object(object, &v10);
        LOBYTE(receivedCopy) = xpc::dyn_cast_or_default(&v10, 0);
        xpc_release(v10);
      }

      xpc_release(v12);
      xpc_release(v13);
    }
  }

  else
  {
    v7 = CTLogMessageCenter();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter simulateSmsReceived:];
    }

    LOBYTE(receivedCopy) = 0;
  }

  return receivedCopy;
}

- (BOOL)simulateDeferredMessage
{
  if (_messageCenterServerConnection)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kSimulateDeferredMessage", object, "kRequest", &v7);
    xpc_release(object[0]);
    v8 = v7;
    v7 = xpc_null_create();
    xpc_release(v7);
    v7 = xpc_null_create();
    if (SendXpcMessage(_messageCenterServerConnection, &v8, &v7) >> 32)
    {
      v2 = 0;
    }

    else
    {
      object[0] = &v7;
      object[1] = "kDidSucceed";
      xpc::dict::object_proxy::operator xpc::object(object, &v6);
      v2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(v7);
    xpc_release(v8);
  }

  else
  {
    v3 = CTLogMessageCenter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter simulateDeferredMessage];
    }

    return 0;
  }

  return v2;
}

- (BOOL)sendBinarySMS:(id)s trackingID:(unsigned int *)d
{
  v48 = *MEMORY[0x1E69E9840];
  if (!s || ![s isValid])
  {
    v11 = 0;
    goto LABEL_46;
  }

  if ([s context])
  {
    v6 = [objc_msgSend(s "context")];
    v7 = CTLogMessageCenter();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = CTSubscriptionSlotAsString(v6);
      v8 = "sendBinarySMS requested for Slot %s";
      v9 = v7;
      v10 = 12;
LABEL_9:
      _os_log_impl(&dword_182E9B000, v9, OS_LOG_TYPE_INFO, v8, buf, v10);
    }
  }

  else
  {
    v12 = CTLogMessageCenter();
    v6 = 1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "sendBinarySMS slot forced to CTSubscriptionSlotOne";
      v6 = 1;
      v9 = v12;
      v10 = 2;
      goto LABEL_9;
    }
  }

  xpc::dict_creator::dict_creator(buf);
  xpc::dict_creator::operator()<char const*>("kSmsSendMessage", buf, "kRequest", __p);
  xpc_release(*buf);
  v13 = __p[0];
  v45 = __p[0];
  __p[0] = xpc_null_create();
  xpc_release(__p[0]);
  v14 = xpc_int64_create(1);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, "kSmsMessageType", v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  payload = [s payload];
  ctu::cf_to_xpc(&value, payload, v17);
  xpc_dictionary_set_value(v13, "kSmsBinaryPayload", value);
  v18 = value;
  value = xpc_null_create();
  xpc_release(v18);
  xpc_release(value);
  value = 0;
  v19 = xpc_int64_create([s srcPort]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, "kSmsApplicationSourcePort", v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_int64_create([s dstPort]);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, "kSmsApplicationDestinationPort", v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create([s portAddressingScheme]);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, "kSmsApplicationAddressingScheme", v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  [s destinationAddress];
  memset(buf, 0, sizeof(buf));
  v47 = 0;
  ctu::cf::assign();
  *__p = *buf;
  v43 = v47;
  if (v47 >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = *buf;
  }

  v26 = xpc_string_create(v25);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, "kSmsDestinationAddress", v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  [s smscAddress];
  memset(buf, 0, sizeof(buf));
  v47 = 0;
  ctu::cf::assign();
  *__p = *buf;
  v43 = v47;
  if (v47 >= 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = *buf;
  }

  v29 = xpc_string_create(v28);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, "kSmsSmscAddress", v29);
  v30 = xpc_null_create();
  xpc_release(v29);
  xpc_release(v30);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  v31 = xpc_BOOL_create(1);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, "kBypassSupportedMessageModesCheck", v31);
  v32 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v32);
  v33 = xpc_int64_create(v6);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, "kSmsSubInstance", v33);
  v34 = xpc_null_create();
  xpc_release(v33);
  xpc_release(v34);
  v35 = xpc_int64_create([s smsType]);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, "kSmsType", v35);
  v36 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v36);
  __p[0] = xpc_null_create();
  v37 = SendXpcMessage(_messageCenterServerConnection, &v45, __p);
  if (MEMORY[0x1865E16C0](__p[0]) == MEMORY[0x1E69E9E80])
  {
    *buf = __p;
    *&buf[8] = "kSmsMessageResult";
    xpc::dict::object_proxy::operator xpc::object(buf, &object);
    v38 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    if (d)
    {
      *buf = __p;
      *&buf[8] = "kSmsMessageID";
      xpc::dict::object_proxy::operator xpc::object(buf, &object);
      *d = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFLL);
      xpc_release(object);
    }
  }

  else
  {
    v38 = 0;
  }

  if (v37)
  {
    v11 = 0;
  }

  else
  {
    v11 = v38;
  }

  xpc_release(__p[0]);
  xpc_release(v45);
LABEL_46:
  v39 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)emergencySessionIntentStart:(id)start
{
  if (start)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kSmsEmergencyUISession", object, "kRequest", &v15);
    xpc_release(object[0]);
    v4 = v15;
    v16 = v15;
    v15 = xpc_null_create();
    xpc_release(v15);
    v5 = xpc_int64_create([start slotID]);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kSmsSubInstance", v5);
    v6 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v6);
    v7 = xpc_int64_create(1);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kEmergencySessionStatus", v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    v15 = xpc_null_create();
    if (SendXpcMessage(_messageCenterServerConnection, &v16, &v15))
    {
      v9 = CTLogMessageCenter();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter emergencySessionIntentStart:];
      }
    }

    else if (MEMORY[0x1865E16C0](v15) == MEMORY[0x1E69E9E80])
    {
      object[0] = &v15;
      object[1] = "kDidSucceed";
      xpc::dict::object_proxy::operator xpc::object(object, &v14);
      v11 = xpc::dyn_cast_or_default(&v14, 0);
      xpc_release(v14);
      if ((v11 & 1) == 0)
      {
        v12 = CTLogMessageCenter();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CTMessageCenter emergencySessionIntentStart:];
        }
      }
    }

    xpc_release(v15);
    xpc_release(v16);
  }

  else
  {
    v10 = CTLogMessageCenter();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter emergencySessionIntentStart:];
    }
  }
}

- (void)emergencySessionIntentEnd:(id)end
{
  if (end)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kSmsEmergencyUISession", &object, "kRequest", &v15);
    xpc_release(object);
    v4 = v15;
    v16 = v15;
    v15 = xpc_null_create();
    xpc_release(v15);
    v5 = xpc_int64_create([end slotID]);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kSmsSubInstance", v5);
    v6 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v6);
    object = &v16;
    v13 = "kEmergencySessionStatus";
    xpc::dict::object_proxy::operator=(&object, &v14);
    xpc_release(v14);
    v14 = 0;
    v15 = xpc_null_create();
    if (SendXpcMessage(_messageCenterServerConnection, &v16, &v15))
    {
      v7 = CTLogMessageCenter();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter emergencySessionIntentEnd:];
      }
    }

    else if (MEMORY[0x1865E16C0](v15) == MEMORY[0x1E69E9E80])
    {
      object = &v15;
      v13 = "kDidSucceed";
      xpc::dict::object_proxy::operator xpc::object(&object, &v11);
      v9 = xpc::dyn_cast_or_default(&v11, 0);
      xpc_release(v11);
      if ((v9 & 1) == 0)
      {
        v10 = CTLogMessageCenter();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [CTMessageCenter emergencySessionIntentEnd:];
        }
      }
    }

    xpc_release(v15);
    xpc_release(v16);
  }

  else
  {
    v8 = CTLogMessageCenter();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter emergencySessionIntentEnd:];
    }
  }
}

@end