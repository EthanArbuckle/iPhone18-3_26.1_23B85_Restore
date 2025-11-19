@interface APSProtocolParser
- (APSProtocolParser)init;
- (BOOL)_parseSerialMessage:(id)a3 parameters:(id *)a4 isInvalid:(BOOL *)a5 lengthParsed:(unint64_t *)a6;
- (BOOL)parseMessage:(id)a3 parameters:(id *)a4 isInvalid:(BOOL *)a5 lengthParsed:(unint64_t *)a6;
- (id)copyFilterMessageWithEnabledHashes:(id)a3 ignoredHashes:(id)a4 opportunisticHashes:(id)a5 nonWakingHashes:(id)a6 pausedHashes:(id)a7 token:(id)a8 version:(unint64_t)a9;
- (id)copyFlushMessageWithWantPaddingLength:(int)a3 paddingLength:(int)a4;
- (id)copyFlushResponseMessageWithPaddingLength:(int)a3;
- (id)copyKeepAliveMessageWithMetadata:(id)a3;
- (id)copyMessageAcknowledgeMessageWithResponse:(int)a3 messageId:(id)a4 token:(id)a5;
- (id)copyMessageTracingAckWithTopicHash:(id)a3 status:(int)a4 tracingUUID:(id)a5 token:(id)a6;
- (id)copyMessageTransportAcknowledgeMessage;
- (id)copyMessageWithTopicHash:(id)a3 identifier:(unint64_t)a4 payload:(id)a5 token:(id)a6 isPlistFormat:(BOOL)a7 lastRTT:(id)a8;
- (void)APNSPackDecoder:(id)a3 ReceivedError:(int)a4;
- (void)APNSPackEncoder:(id)a3 receivedError:(int)a4;
- (void)dumpData:(id)a3 prefix:(const char *)a4 log_type:(unsigned __int8)a5;
- (void)setSerialItemInParameters:(id)a3 commandID:(unint64_t)a4 itemID:(unint64_t)a5 itemData:(id)a6;
- (void)setSerialNumberInParameters:(id)a3 commandID:(unint64_t)a4 itemID:(unint64_t)a5 Integer:(int64_t)a6;
- (void)sharedCoderEncounteredParsingFailure:(id)a3;
- (void)validateEncodedData:(id)a3 withPlist:(id)a4;
@end

@implementation APSProtocolParser

- (id)copyMessageTransportAcknowledgeMessage
{
  if (self->_isPackedFormat)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[APSProtocolMessage alloc] initWithCommand:21];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:21];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:21];
  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    v5 = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:v5];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      v6 = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      v6 = [(APSProtocolMessage *)v3 copyMessageData];
    }

    v5 = v6;
  }

  v7 = +[APSLog protocolParser];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100109E74(self, v5, v7);
  }

  return v5;
}

- (APSProtocolParser)init
{
  v3.receiver = self;
  v3.super_class = APSProtocolParser;
  result = [(APSProtocolParser *)&v3 init];
  if (result)
  {
    result->_identifier = atomic_fetch_add(dword_1001BBE58, 1u);
  }

  return result;
}

- (id)copyFilterMessageWithEnabledHashes:(id)a3 ignoredHashes:(id)a4 opportunisticHashes:(id)a5 nonWakingHashes:(id)a6 pausedHashes:(id)a7 token:(id)a8 version:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (self->_isPackedFormat)
  {
    v21 = 0;
  }

  else
  {
    v21 = [[APSProtocolMessage alloc] initWithCommand:9];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:9];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:9];
  if (a9)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendEightByteItem:12 bytes:a9 isIndexable:0];
    [(APSProtocolMessage *)v21 appendEightByteItem:12 bytes:a9];
    [(APNSPackEncoder *)self->_encoderWrapper addInt64WithAttributeId:12 number:a9 isIndexable:0];
  }

  if (v20)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:1 data:v20 isIndexable:1];
    [(APSProtocolMessage *)v21 appendItem:1 data:v20];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:1 data:v20 isIndexable:1];
  }

  v83 = self;
  v22 = [(APNSPackEncoder *)self->_encoderWrapper maxTableSize];
  v150[0] = 0;
  v150[1] = v150;
  v150[2] = 0x2020000000;
  v150[3] = 0;
  v148[0] = 0;
  v148[1] = v148;
  v148[2] = 0x2020000000;
  v149 = 0;
  v139[0] = _NSConcreteStackBlock;
  v139[1] = 3221225472;
  v139[2] = sub_1000605AC;
  v139[3] = &unk_100187958;
  v147 = (vcvtd_n_f64_u64(v22, 1uLL) / 53.0);
  v145 = v150;
  v146 = v148;
  v80 = v20;
  v140 = v80;
  v23 = v15;
  v141 = v23;
  v24 = v16;
  v142 = v24;
  v25 = v17;
  v143 = v25;
  v87 = v19;
  v144 = v87;
  v136[0] = _NSConcreteStackBlock;
  v136[1] = 3221225472;
  v136[2] = sub_100060710;
  v136[3] = &unk_100187980;
  v85 = objc_retainBlock(v139);
  v138 = v85;
  v136[4] = self;
  v81 = v21;
  v137 = v81;
  v26 = objc_retainBlock(v136);
  v27 = objc_alloc_init(NSMutableArray);
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v23;
  v28 = [obj countByEnumeratingWithState:&v132 objects:v178 count:16];
  if (v28)
  {
    v29 = *v133;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v133 != v29)
        {
          objc_enumerationMutation(obj);
        }

        (v26[2])(v26, *(*(&v132 + 1) + 8 * i), 2, v27);
      }

      v28 = [obj countByEnumeratingWithState:&v132 objects:v178 count:16];
    }

    while (v28);
  }

  v31 = objc_alloc_init(NSMutableArray);
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v91 = v24;
  v32 = [v91 countByEnumeratingWithState:&v128 objects:v177 count:16];
  if (v32)
  {
    v33 = *v129;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v129 != v33)
        {
          objc_enumerationMutation(v91);
        }

        (v26[2])(v26, *(*(&v128 + 1) + 8 * j), 3, v31);
      }

      v32 = [v91 countByEnumeratingWithState:&v128 objects:v177 count:16];
    }

    while (v32);
  }

  v35 = objc_alloc_init(NSMutableArray);
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v90 = v25;
  v36 = [v90 countByEnumeratingWithState:&v124 objects:v176 count:16];
  if (v36)
  {
    v37 = *v125;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v125 != v37)
        {
          objc_enumerationMutation(v90);
        }

        (v26[2])(v26, *(*(&v124 + 1) + 8 * k), 4, v35);
      }

      v36 = [v90 countByEnumeratingWithState:&v124 objects:v176 count:16];
    }

    while (v36);
  }

  v39 = objc_alloc_init(NSMutableArray);
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v89 = v18;
  v40 = [v89 countByEnumeratingWithState:&v120 objects:v175 count:16];
  if (v40)
  {
    v41 = *v121;
    do
    {
      for (m = 0; m != v40; m = m + 1)
      {
        if (*v121 != v41)
        {
          objc_enumerationMutation(v89);
        }

        (v26[2])(v26, *(*(&v120 + 1) + 8 * m), 6, v39);
      }

      v40 = [v89 countByEnumeratingWithState:&v120 objects:v175 count:16];
    }

    while (v40);
  }

  v43 = objc_alloc_init(NSMutableArray);
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v88 = v87;
  v44 = [v88 countByEnumeratingWithState:&v116 objects:v174 count:16];
  if (v44)
  {
    v45 = *v117;
    do
    {
      for (n = 0; n != v44; n = n + 1)
      {
        if (*v117 != v45)
        {
          objc_enumerationMutation(v88);
        }

        (v26[2])(v26, *(*(&v116 + 1) + 8 * n), 5, v43);
      }

      v44 = [v88 countByEnumeratingWithState:&v116 objects:v174 count:16];
    }

    while (v44);
  }

  v113[0] = _NSConcreteStackBlock;
  v113[1] = 3221225472;
  v113[2] = sub_1000607F8;
  v113[3] = &unk_1001879A8;
  v79 = v85;
  v115 = v79;
  v113[4] = v83;
  v82 = v81;
  v114 = v82;
  v47 = objc_retainBlock(v113);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v86 = v27;
  v48 = [v86 countByEnumeratingWithState:&v109 objects:v173 count:16];
  if (v48)
  {
    v49 = *v110;
    do
    {
      for (ii = 0; ii != v48; ii = ii + 1)
      {
        if (*v110 != v49)
        {
          objc_enumerationMutation(v86);
        }

        (v47[2])(v47, *(*(&v109 + 1) + 8 * ii), 7);
      }

      v48 = [v86 countByEnumeratingWithState:&v109 objects:v173 count:16];
    }

    while (v48);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v51 = v31;
  v52 = [v51 countByEnumeratingWithState:&v105 objects:v172 count:16];
  if (v52)
  {
    v53 = *v106;
    do
    {
      for (jj = 0; jj != v52; jj = jj + 1)
      {
        if (*v106 != v53)
        {
          objc_enumerationMutation(v51);
        }

        (v47[2])(v47, *(*(&v105 + 1) + 8 * jj), 8);
      }

      v52 = [v51 countByEnumeratingWithState:&v105 objects:v172 count:16];
    }

    while (v52);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v55 = v35;
  v56 = [v55 countByEnumeratingWithState:&v101 objects:v171 count:16];
  if (v56)
  {
    v57 = *v102;
    do
    {
      for (kk = 0; kk != v56; kk = kk + 1)
      {
        if (*v102 != v57)
        {
          objc_enumerationMutation(v55);
        }

        (v47[2])(v47, *(*(&v101 + 1) + 8 * kk), 9);
      }

      v56 = [v55 countByEnumeratingWithState:&v101 objects:v171 count:16];
    }

    while (v56);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v59 = v39;
  v60 = [v59 countByEnumeratingWithState:&v97 objects:v170 count:16];
  if (v60)
  {
    v61 = *v98;
    do
    {
      for (mm = 0; mm != v60; mm = mm + 1)
      {
        if (*v98 != v61)
        {
          objc_enumerationMutation(v59);
        }

        (v47[2])(v47, *(*(&v97 + 1) + 8 * mm), 11);
      }

      v60 = [v59 countByEnumeratingWithState:&v97 objects:v170 count:16];
    }

    while (v60);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v63 = v43;
  v64 = [v63 countByEnumeratingWithState:&v93 objects:v169 count:16];
  if (v64)
  {
    v65 = *v94;
    do
    {
      for (nn = 0; nn != v64; nn = nn + 1)
      {
        if (*v94 != v65)
        {
          objc_enumerationMutation(v63);
        }

        (v47[2])(v47, *(*(&v93 + 1) + 8 * nn), 10);
      }

      v64 = [v63 countByEnumeratingWithState:&v93 objects:v169 count:16];
    }

    while (v64);
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = v83->_sharedEncoder) != 0)
  {
    v68 = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)v83 validateEncodedData:v68];
  }

  else
  {
    if (v83->_isPackedFormat)
    {
      v69 = [(APNSPackEncoder *)v83->_encoderWrapper copyMessage];
    }

    else
    {
      v69 = [(APSProtocolMessage *)v82 copyMessageData];
    }

    v68 = v69;
  }

  v70 = +[APSLog protocolParser];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    identifier = v83->_identifier;
    v78 = [v80 debugDescription];
    v77 = [obj count];
    v76 = [v91 count];
    v75 = [v90 count];
    v74 = [v89 count];
    v72 = [v88 count];
    v73 = [v68 length];
    *buf = 134220034;
    v152 = identifier;
    v153 = 2112;
    v154 = v78;
    v155 = 2048;
    v156 = a9;
    v157 = 2048;
    v158 = v77;
    v159 = 2048;
    v160 = v76;
    v161 = 2048;
    v162 = v75;
    v163 = 2048;
    v164 = v74;
    v165 = 2048;
    v166 = v72;
    v167 = 2048;
    v168 = v73;
    _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "P%04llu <out:filter> token: %@ version: %llu; enabled.len: %llu ignoredHashes.len: %llu opportunistic.len: %llu nonWaking.len: %llu paused.len: %llu  -- data.len: %llu", buf, 0x5Cu);
  }

  _Block_object_dispose(v148, 8);
  _Block_object_dispose(v150, 8);

  return v68;
}

- (id)copyMessageAcknowledgeMessageWithResponse:(int)a3 messageId:(id)a4 token:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (self->_isPackedFormat)
  {
    v10 = 0;
  }

  else
  {
    v10 = [[APSProtocolMessage alloc] initWithCommand:11];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:11];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:11];
  [(APSSharedEncoder *)self->_sharedEncoder appendOneByteItem:8 byte:a3 isIndexable:0];
  [(APSProtocolMessage *)v10 appendOneByteItem:8 byte:a3];
  [(APNSPackEncoder *)self->_encoderWrapper addInt8WithAttributeId:8 number:a3 isIndexable:0];
  if (v8)
  {
    -[APSSharedEncoder appendFourByteItem:bytes:isIndexable:](self->_sharedEncoder, "appendFourByteItem:bytes:isIndexable:", 4, *[v8 bytes], 0);
    [(APSProtocolMessage *)v10 appendItem:4 data:v8];
    -[APNSPackEncoder addInt32WithAttributeId:number:isIndexable:](self->_encoderWrapper, "addInt32WithAttributeId:number:isIndexable:", 4, *[v8 bytes], 0);
  }

  if (v9)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:1 data:v9 isIndexable:1];
    [(APSProtocolMessage *)v10 appendItem:1 data:v9];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:1 data:v9 isIndexable:1];
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    v12 = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:v12];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      v13 = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      v13 = [(APSProtocolMessage *)v10 copyMessageData];
    }

    v12 = v13;
  }

  v14 = +[APSLog protocolParser];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v17 = [v9 debugDescription];
    if (v8)
    {
      v18 = *[v8 bytes];
    }

    else
    {
      v18 = 0;
    }

    v19 = 134219010;
    v20 = identifier;
    v21 = 2112;
    v22 = v17;
    v23 = 2048;
    v24 = a3;
    v25 = 1024;
    v26 = v18;
    v27 = 2048;
    v28 = [v12 length];
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "P%04llu <out:msgAck> token: %@ status: %lld messageID: %u  -- data.len: %llu", &v19, 0x30u);
  }

  return v12;
}

- (id)copyMessageTracingAckWithTopicHash:(id)a3 status:(int)a4 tracingUUID:(id)a5 token:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (self->_isPackedFormat)
  {
    v13 = 0;
  }

  else
  {
    v13 = [[APSProtocolMessage alloc] initWithCommand:27];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:27];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:27];
  [(APSSharedEncoder *)self->_sharedEncoder appendItem:1 data:v10 isIndexable:1];
  [(APSProtocolMessage *)v13 appendItem:1 data:v10];
  [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:1 data:v10 isIndexable:1];
  [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:v11 isIndexable:0];
  [(APSProtocolMessage *)v13 appendItem:2 data:v11];
  [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:v11 isIndexable:0];
  [(APSSharedEncoder *)self->_sharedEncoder appendOneByteItem:3 byte:a4 isIndexable:0];
  [(APSProtocolMessage *)v13 appendOneByteItem:3 byte:a4];
  [(APNSPackEncoder *)self->_encoderWrapper addInt8WithAttributeId:3 number:a4 isIndexable:0];
  if (v12)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:4 data:v12 isIndexable:1];
    [(APSProtocolMessage *)v13 appendItem:4 data:v12];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:4 data:v12 isIndexable:1];
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    v15 = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:v15];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      v16 = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      v16 = [(APSProtocolMessage *)v13 copyMessageData];
    }

    v15 = v16;
  }

  v17 = +[APSLog protocolParser];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v20 = [v12 debugDescription];
    v21 = 134219266;
    v22 = identifier;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = a4;
    v29 = 2112;
    v30 = v11;
    v31 = 2048;
    v32 = [v15 length];
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "P%04llu <out:msgTraceAck> token: %@ topicHash: %@d status: %lld tracingUUID: %@  -- data.len: %llu", &v21, 0x3Eu);
  }

  return v15;
}

- (id)copyKeepAliveMessageWithMetadata:(id)a3
{
  v4 = a3;
  if (self->_isPackedFormat)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[APSProtocolMessage alloc] initWithCommand:12];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:12];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:12];
  v6 = [v4 carrier];
  v7 = [v6 length];

  if (v7)
  {
    sharedEncoder = self->_sharedEncoder;
    v9 = [v4 carrier];
    [(APSSharedEncoder *)sharedEncoder appendItem:1 string:v9 isIndexable:1];

    v10 = [v4 carrier];
    [(APSProtocolMessage *)v5 appendItem:1 string:v10];

    encoderWrapper = self->_encoderWrapper;
    v12 = [v4 carrier];
    [(APNSPackEncoder *)encoderWrapper addStringWithAttributId:1 string:v12 isIndexable:1];
  }

  v13 = [v4 softwareVersion];
  v14 = [v13 length];

  if (v14)
  {
    v15 = self->_sharedEncoder;
    v16 = [v4 softwareVersion];
    [(APSSharedEncoder *)v15 appendItem:2 string:v16 isIndexable:1];

    v17 = [v4 softwareVersion];
    [(APSProtocolMessage *)v5 appendItem:2 string:v17];

    v18 = self->_encoderWrapper;
    v19 = [v4 softwareVersion];
    [(APNSPackEncoder *)v18 addStringWithAttributId:2 string:v19 isIndexable:1];
  }

  v20 = [v4 softwareBuild];
  v21 = [v20 length];

  if (v21)
  {
    v22 = self->_sharedEncoder;
    v23 = [v4 softwareBuild];
    [(APSSharedEncoder *)v22 appendItem:3 string:v23 isIndexable:1];

    v24 = [v4 softwareBuild];
    [(APSProtocolMessage *)v5 appendItem:3 string:v24];

    v25 = self->_encoderWrapper;
    v26 = [v4 softwareBuild];
    [(APNSPackEncoder *)v25 addStringWithAttributId:3 string:v26 isIndexable:1];
  }

  v27 = [v4 hardwareVersion];
  v28 = [v27 length];

  if (v28)
  {
    v29 = self->_sharedEncoder;
    v30 = [v4 hardwareVersion];
    [(APSSharedEncoder *)v29 appendItem:4 string:v30 isIndexable:1];

    v31 = [v4 hardwareVersion];
    [(APSProtocolMessage *)v5 appendItem:4 string:v31];

    v32 = self->_encoderWrapper;
    v33 = [v4 hardwareVersion];
    [(APNSPackEncoder *)v32 addStringWithAttributId:4 string:v33 isIndexable:1];
  }

  v34 = self->_sharedEncoder;
  v35 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 keepAliveInterval]);
  v36 = [v35 description];
  [(APSSharedEncoder *)v34 appendItem:5 string:v36 isIndexable:1];

  v37 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 keepAliveInterval]);
  v38 = [v37 description];
  [(APSProtocolMessage *)v5 appendItem:5 string:v38];

  v39 = self->_encoderWrapper;
  v40 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 keepAliveInterval]);
  v41 = [v40 description];
  [(APNSPackEncoder *)v39 addStringWithAttributId:5 string:v41 isIndexable:1];

  if ([v4 delayedResponseInterval] >= 1)
  {
    v42 = self->_sharedEncoder;
    v43 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 delayedResponseInterval]);
    v44 = [v43 description];
    [(APSSharedEncoder *)v42 appendItem:6 string:v44 isIndexable:1];

    v45 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 delayedResponseInterval]);
    v46 = [v45 description];
    [(APSProtocolMessage *)v5 appendItem:6 string:v46];

    v47 = self->_encoderWrapper;
    v48 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 delayedResponseInterval]);
    v49 = [v48 description];
    [(APNSPackEncoder *)v47 addStringWithAttributId:6 string:v49 isIndexable:1];
  }

  if ([v4 usingServerStats])
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:8 bytes:1 isIndexable:0];
    [(APSProtocolMessage *)v5 appendTwoByteItem:8 bytes:1];
    [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:8 number:1 isIndexable:0];
  }

  v50 = [v4 keepAliveState];

  if (v50)
  {
    v51 = [v4 keepAliveState];
    -[APSSharedEncoder appendOneByteItem:byte:isIndexable:](self->_sharedEncoder, "appendOneByteItem:byte:isIndexable:", 9, [v51 state], 0);
    -[APSProtocolMessage appendOneByteItem:byte:](v5, "appendOneByteItem:byte:", 9, [v51 state]);
    -[APNSPackEncoder addInt8WithAttributeId:number:isIndexable:](self->_encoderWrapper, "addInt8WithAttributeId:number:isIndexable:", 9, [v51 state], 0);
    -[APSSharedEncoder appendOneByteItem:byte:isIndexable:](self->_sharedEncoder, "appendOneByteItem:byte:isIndexable:", 10, [v51 subState], 0);
    -[APSProtocolMessage appendOneByteItem:byte:](v5, "appendOneByteItem:byte:", 10, [v51 subState]);
    -[APNSPackEncoder addInt8WithAttributeId:number:isIndexable:](self->_encoderWrapper, "addInt8WithAttributeId:number:isIndexable:", 10, [v51 subState], 0);
  }

  if (_os_feature_enabled_impl() && (v52 = self->_sharedEncoder) != 0)
  {
    v53 = [(APSSharedEncoder *)v52 copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:v53];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      v54 = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      v54 = [(APSProtocolMessage *)v5 copyMessageData];
    }

    v53 = v54;
  }

  v55 = +[APSLog protocolParser];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v58 = 134218498;
    v59 = identifier;
    v60 = 2112;
    v61 = v4;
    v62 = 2048;
    v63 = [v53 length];
    _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "P%04llu <out:ka> metadata: %@ -- data.len: %llu", &v58, 0x20u);
  }

  return v53;
}

- (id)copyMessageWithTopicHash:(id)a3 identifier:(unint64_t)a4 payload:(id)a5 token:(id)a6 isPlistFormat:(BOOL)a7 lastRTT:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  if (self->_isPackedFormat)
  {
    v18 = 0;
  }

  else
  {
    v18 = [[APSProtocolMessage alloc] initWithCommand:10];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:10];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:10];
  [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:4 bytes:a4 isIndexable:0];
  [(APSProtocolMessage *)v18 appendFourByteItem:4 bytes:a4];
  [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:4 number:a4 isIndexable:0];
  [(APSSharedEncoder *)self->_sharedEncoder appendItem:1 data:v14 isIndexable:1];
  [(APSProtocolMessage *)v18 appendItem:1 data:v14];
  [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:1 data:v14 isIndexable:1];
  if (v16)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:v16 isIndexable:1];
    [(APSProtocolMessage *)v18 appendItem:2 data:v16];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:v16 isIndexable:1];
  }

  [(APSProtocolMessage *)v18 appendItem:3 data:v15];
  sharedEncoder = self->_sharedEncoder;
  if (v9)
  {
    [(APSSharedEncoder *)sharedEncoder appendBinaryPropertyListItem:3 data:v15 isIndexable:0];
    [(APNSPackEncoder *)self->_encoderWrapper addBinaryPropertyListWithAttributeId:3 data:v15 isIndexable:0];
    if (!v17)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(APSSharedEncoder *)sharedEncoder appendItem:3 data:v15 isIndexable:0];
  [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:3 data:v15 isIndexable:0];
  if (v17)
  {
LABEL_10:
    -[APSSharedEncoder appendTwoByteItem:bytes:isIndexable:](self->_sharedEncoder, "appendTwoByteItem:bytes:isIndexable:", 25, [v17 unsignedIntegerValue], 0);
    -[APSProtocolMessage appendTwoByteItem:bytes:](v18, "appendTwoByteItem:bytes:", 25, [v17 unsignedIntegerValue]);
    -[APNSPackEncoder addInt16WithAttributeId:number:isIndexable:](self->_encoderWrapper, "addInt16WithAttributeId:number:isIndexable:", 25, [v17 unsignedIntegerValue], 0);
  }

LABEL_11:
  if (_os_feature_enabled_impl() && (v20 = self->_sharedEncoder) != 0)
  {
    v21 = [(APSSharedEncoder *)v20 copyMessageData];
    if (v9)
    {
      [(APSProtocolParser *)self validateEncodedData:v21 withPlist:v15];
    }

    else
    {
      [(APSProtocolParser *)self validateEncodedData:v21];
    }
  }

  else
  {
    if (self->_isPackedFormat)
    {
      v22 = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      v22 = [(APSProtocolMessage *)v18 copyMessageData];
    }

    v21 = v22;
  }

  v23 = +[APSLog protocolParser];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v25 = [v16 debugDescription];
    v28 = [v15 length];
    if (v9)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v27 = [v21 length];
    *buf = 134219522;
    v32 = identifier;
    v33 = 2112;
    v34 = v25;
    v35 = 2112;
    v36 = v14;
    v37 = 2048;
    v38 = a4;
    v39 = 2048;
    v40 = v29;
    v41 = 2112;
    v42 = v26;
    v43 = 2048;
    v44 = v27;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "P%04llu <out:msg> token: %@ topicHash: %@ messageID: %llu payload.len: %llu isPlistFormat: %@ -- data.len: %llu", buf, 0x48u);
  }

  return v21;
}

- (id)copyFlushMessageWithWantPaddingLength:(int)a3 paddingLength:(int)a4
{
  if (self->_isPackedFormat)
  {
    v7 = 0;
  }

  else
  {
    v7 = [[APSProtocolMessage alloc] initWithCommand:15];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:15];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:15];
  if (a3)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:1 bytes:a3 isIndexable:0];
    [(APSProtocolMessage *)v7 appendTwoByteItem:1 bytes:a3];
    [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:1 number:a3 isIndexable:0];
  }

  if (a4)
  {
    v8 = objc_alloc_init(NSMutableData);
    [v8 increaseLengthBy:a4];
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:v8 isIndexable:0];
    [(APSProtocolMessage *)v7 appendItem:2 data:v8];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:v8 isIndexable:0];
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    v10 = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:v10];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      v11 = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      v11 = [(APSProtocolMessage *)v7 copyMessageData];
    }

    v10 = v11;
  }

  v12 = +[APSLog protocolParser];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v15 = 134218752;
    v16 = identifier;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    v21 = 2048;
    v22 = [v10 length];
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "P%04llu <out:flush> wantLength: %llu paddingLength: %llu  -- data.len: %llu", &v15, 0x2Au);
  }

  return v10;
}

- (id)copyFlushResponseMessageWithPaddingLength:(int)a3
{
  if (self->_isPackedFormat)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[APSProtocolMessage alloc] initWithCommand:16];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:16];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:16];
  if (a3)
  {
    v6 = objc_alloc_init(NSMutableData);
    [v6 increaseLengthBy:a3];
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:v6 isIndexable:0];
    [(APSProtocolMessage *)v5 appendItem:2 data:v6];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:v6 isIndexable:0];
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    v8 = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:v8];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      v9 = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      v9 = [(APSProtocolMessage *)v5 copyMessageData];
    }

    v8 = v9;
  }

  v10 = +[APSLog protocolParser];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v13 = 134218496;
    v14 = identifier;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = [v8 length];
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "P%04llu <out:flushResp> paddingLength: %llu  -- data.len: %llu", &v13, 0x20u);
  }

  return v8;
}

- (void)dumpData:(id)a3 prefix:(const char *)a4 log_type:(unsigned __int8)a5
{
  v6 = a3;
  v7 = +[APSLog protocolParser];
  v8 = os_log_type_enabled(v7, a5);

  if (v8)
  {
    v9 = [v6 bytes];
    v26 = v6;
    v10 = [v6 length];
    v11 = +[APSLog protocolParser];
    if (os_log_type_enabled(v11, a5))
    {
      *buf = 136315650;
      v36 = a4;
      v37 = 2048;
      v38 = v9;
      v39 = 2048;
      v40 = v10;
      _os_log_impl(&_mh_execute_header, v11, a5, "START %s @ %p,%ld:", buf, 0x20u);
    }

    if (v10 >= 1)
    {
      v12 = &v9[v10];
      v13 = v9;
      v27 = a5;
      do
      {
        v14 = *v13++;
        v15 = snprintf(buf, 0xC0uLL, "%02x", v14);
        if (v13 < v12)
        {
          v16 = v15;
          v17 = 1;
          do
          {
            v18 = &v9[v17];
            if ((v17 & 7) != 0)
            {
              v19 = "";
            }

            else
            {
              v19 = " ";
            }

            v21 = *v18;
            v20 = (v18 + 1);
            v22 = snprintf(&buf[v16], 192 - v16, "%s%02x", v19, v21);
            v23 = v17 + 1;
            if (v17 > 0x3E)
            {
              break;
            }

            v16 += v22;
            ++v17;
          }

          while (v20 < v12);
          v13 = &v9[v23];
          a5 = v27;
        }

        v24 = +[APSLog protocolParser];
        if (os_log_type_enabled(v24, a5))
        {
          *v29 = 136315650;
          v30 = a4;
          v31 = 2048;
          v32 = v9;
          v33 = 2080;
          v34 = buf;
          _os_log_impl(&_mh_execute_header, v24, a5, "DATA %s %p [%s]", v29, 0x20u);
        }

        v9 = v13;
      }

      while (v13 < v12);
    }

    v25 = +[APSLog protocolParser];
    if (os_log_type_enabled(v25, a5))
    {
      *v29 = 136315138;
      v30 = a4;
      _os_log_impl(&_mh_execute_header, v25, a5, "STOP %s", v29, 0xCu);
    }

    v6 = v26;
  }
}

- (void)validateEncodedData:(id)a3 withPlist:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(APSProtocolParser *)self isPackedFormat])
  {
    [(APSProtocolParser *)self dumpData:v8 prefix:"libuaps" log_type:2];
    v7 = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    if (([v8 isEqualToData:v7] & 1) == 0)
    {
      [(APSProtocolParser *)self dumpData:v7 prefix:"APNSPackCPP" log_type:2];
      if (v6)
      {
        [(APSProtocolParser *)self dumpData:v6 prefix:"bplist" log_type:2];
      }
    }
  }
}

- (void)APNSPackEncoder:(id)a3 receivedError:(int)a4
{
  if (self->_encoderWrapper == a3)
  {
    delegate = self->_delegate;
    v7 = [a3 errorMessage];
    [(APSProtocolParserDelegate *)delegate protocolParser:self receiveAPNSPackError:v7];
  }
}

- (void)APNSPackDecoder:(id)a3 ReceivedError:(int)a4
{
  if (self->_decoderWrapper == a3)
  {
    delegate = self->_delegate;
    v7 = [a3 errorMessage];
    [(APSProtocolParserDelegate *)delegate protocolParser:self receiveAPNSPackError:v7];
  }
}

- (void)sharedCoderEncounteredParsingFailure:(id)a3
{
  if (self->_sharedDecoder == a3 || self->_sharedEncoder == a3)
  {
    [(APSProtocolParserDelegate *)self->_delegate protocolParser:self receiveAPNSPackError:@"Unknown Error"];
  }
}

- (BOOL)parseMessage:(id)a3 parameters:(id *)a4 isInvalid:(BOOL *)a5 lengthParsed:(unint64_t *)a6
{
  v10 = a3;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  if (![v10 length])
  {
    LOBYTE(v15) = 0;
    goto LABEL_20;
  }

  v11 = *[v10 bytes];
  if (v11 <= 0x22 && ((1 << v11) & 0x760C5EF80) != 0)
  {
    if (!_os_feature_enabled_impl() || (decoderWrapper = self->_sharedDecoder) == 0)
    {
      if (!self->_isPackedFormat)
      {
        v14 = [(APSProtocolParser *)self _parseSerialMessage:v10 parameters:a4 isInvalid:a5 lengthParsed:a6];
        goto LABEL_13;
      }

      decoderWrapper = self->_decoderWrapper;
    }

    v14 = [decoderWrapper decodeMessage:v10 parser:self parameters:a4 isInvalid:a5 lengthParsed:a6];
LABEL_13:
    v15 = v14;
    goto LABEL_14;
  }

  v15 = 0;
  *a5 = 1;
LABEL_14:
  v16 = +[APSLog protocolParser];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

  if (v17)
  {
    if ((v11 - 7) > 0x1Bu)
    {
      v18 = @"invalid";
    }

    else
    {
      v18 = off_1001879C8[(v11 - 7)];
    }

    v19 = +[APSLog protocolParser];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v22 = [v10 length];
      v23 = *a6;
      v24 = @"NO";
      v25 = *a4;
      if (*a5)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v27 = 134219778;
      if (v15)
      {
        v24 = @"YES";
      }

      v28 = identifier;
      v29 = 2112;
      v30 = v18;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v22;
      v35 = 2048;
      v36 = v23;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v24;
      v41 = 2112;
      v42 = v25;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "P%04llu <in:%@> command: %llu message.len: %llu lengthParsed: %llu isInvalid: %@ success: %@  -- parameters: %@", &v27, 0x52u);
    }
  }

LABEL_20:

  return v15;
}

- (BOOL)_parseSerialMessage:(id)a3 parameters:(id *)a4 isInvalid:(BOOL *)a5 lengthParsed:(unint64_t *)a6
{
  v10 = a3;
  v11 = [v10 length];
  v12 = [v10 bytes];
  v13 = +[NSMutableDictionary dictionary];
  v14 = *v12;
  v15 = [NSNumber numberWithUnsignedInteger:v14];
  [v13 setObject:v15 forKey:@"APSProtocolCommand"];

  if (v11 < 5)
  {
    goto LABEL_4;
  }

  v16 = *(v12 + 1);
  v17 = bswap32(v16);
  if ((v17 & 0x80000000) != 0)
  {
    v19 = 0;
    *a5 = 1;
    goto LABEL_11;
  }

  v28 = a5;
  v18 = v17 + 5;
  if (v11 >= v18)
  {
    v27 = a6;
    v20 = 5;
    if (v16)
    {
      while (1)
      {
        v21 = &v12[v20];
        v22 = v20 + 3;
        v20 += 3 + (bswap32(*&v12[v20 + 1]) >> 16);
        if (v20 > v18)
        {
          break;
        }

        v23 = *v21;
        v24 = [NSData dataWithBytes:&v12[v22] length:?];
        [(APSProtocolParser *)self setSerialItemInParameters:v13 commandID:v14 itemID:v23 itemData:v24];

        if (v20 >= v18)
        {
          goto LABEL_9;
        }
      }

      v19 = 0;
      *v28 = 1;
    }

    else
    {
LABEL_9:
      v25 = v13;
      *a4 = v13;
      *v27 = v20;
      v19 = 1;
    }
  }

  else
  {
LABEL_4:
    v19 = 0;
  }

LABEL_11:

  return v19;
}

- (void)setSerialNumberInParameters:(id)a3 commandID:(unint64_t)a4 itemID:(unint64_t)a5 Integer:(int64_t)a6
{
  v9 = a3;
  if (a4 <= 14)
  {
    if (a4 > 9)
    {
      switch(a4)
      {
        case 0xAuLL:
          if (a5 <= 8)
          {
            switch(a5)
            {
              case 4uLL:
                if (a6 != a6)
                {
                  goto LABEL_126;
                }

                v16 = a6;
                v10 = [NSData dataWithBytes:&v16 length:4];
                v11 = @"APSProtocolMessageID";
                break;
              case 5uLL:
                if (HIDWORD(a6))
                {
                  goto LABEL_126;
                }

                v10 = [NSDate dateWithTimeIntervalSince1970:a6];
                v11 = @"APSProtocolMessageExpiry";
                break;
              case 6uLL:
                v10 = [NSNumber numberWithUnsignedLongLong:a6];
                v11 = @"APSProtocolMessageTimestamp";
                break;
              default:
                goto LABEL_126;
            }
          }

          else if (a5 > 25)
          {
            if (a5 == 26)
            {
              if (a6 != a6)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedLong:a6];
              v11 = @"APSProtocolMessageAPNFlags";
            }

            else
            {
              if (a5 != 28 || a6 != a6)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedShort:a6];
              v11 = @"APSProtocolMessagePushType";
            }
          }

          else if (a5 == 9)
          {
            if (a6 != a6)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInteger:a6];
            v11 = @"APSProtocolMessageStorageFlags";
          }

          else
          {
            if (a5 != 13 || a6 != a6)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInteger:a6];
            v11 = @"APSProtocolMessagePriority";
          }

          break;
        case 0xBuLL:
          if (a5 == 6)
          {
            v10 = [NSNumber numberWithUnsignedLongLong:a6];
            v11 = @"APSProtocolAckTimestampKey";
          }

          else
          {
            if (a5 != 8 || a6 != a6)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInteger:a6];
            v11 = @"APSProtocolDeliveryStatus";
          }

          break;
        case 0xDuLL:
          if (a5 == 2)
          {
            if (a6 != a6)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInt:a6];
            v11 = @"APSProtocolKeepAliveDelayKeepAliveDurationKey";
          }

          else
          {
            if (a5 != 1 || a6 != a6)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInteger:a6];
            v11 = @"APSProtocolKeepAliveResponse";
          }

          break;
        default:
          goto LABEL_126;
      }
    }

    else
    {
      switch(a4)
      {
        case 7uLL:
          if (a5 != 2)
          {
            goto LABEL_126;
          }

          v10 = [NSNumber numberWithUnsignedInteger:a6];
          v11 = @"APSProtocolPresenceStatus";
          break;
        case 8uLL:
          if (a5 <= 9)
          {
            if (a5 <= 5)
            {
              if (a5 == 1)
              {
                if (a6 != a6)
                {
                  goto LABEL_126;
                }

                v10 = [NSNumber numberWithUnsignedInteger:a6];
                v11 = @"APSProtocolConnectedResponse";
              }

              else
              {
                if (a5 != 4 || a6 != a6)
                {
                  goto LABEL_126;
                }

                v10 = [NSNumber numberWithUnsignedInteger:a6];
                v11 = @"APSProtocolMessageSize";
              }
            }

            else if (a5 == 6)
            {
              if (a6 != a6)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedLong:a6];
              v12 = [NSNumber numberWithBool:a6 & 1];
              [v9 setObject:v12 forKey:@"APSProtocolDualChannelSupport"];
              v13 = [NSNumber numberWithBool:(a6 >> 1) & 1];
              [v9 setObject:v13 forKey:@"APSProtocolReportLastReversePushRTT"];
              v14 = [NSNumber numberWithBool:(a6 >> 2) & 1];
              [v9 setObject:v14 forKey:@"APSProtocolFilterOptimizationSupport"];
              v15 = [NSNumber numberWithBool:(a6 >> 3) & 1];
              [v9 setObject:v15 forKey:@"APSProtocolServerRequestedTTR"];

              v11 = @"APSProtocolCapabilities";
            }

            else if (a5 == 7)
            {
              v10 = [NSNumber numberWithUnsignedLongLong:a6];
              v11 = @"APSProtocolServerTimeForBadNonce";
            }

            else
            {
              if (a5 != 8 || a6 != a6)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedInteger:a6];
              v11 = @"APSProtocolLargeMessageSize";
            }
          }

          else if (a5 > 17)
          {
            if (a5 == 18)
            {
              if (a6 != a6)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedLongLong:a6];
              v11 = @"APSProtocolMaxKeepAliveInterval";
            }

            else if (a5 == 20)
            {
              if (a6 != a6)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedShort:a6];
              v11 = @"APSProtocolExperimentIDKey";
            }

            else
            {
              if (a5 != 22 || a6 != a6)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedChar:a6];
              v11 = @"APSProtocolPSKVendingStatus";
            }
          }

          else if (a5 == 10)
          {
            v10 = [NSNumber numberWithUnsignedLongLong:a6];
            v11 = @"APSProtocolServerTime";
          }

          else if (a5 == 16)
          {
            if (a6 != a6)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedLongLong:a6];
            v11 = @"APSProtocolMinKeepAliveInterval";
          }

          else
          {
            if (a5 != 17 || a6 != a6)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedLongLong:a6];
            v11 = @"APSProtocolExpectedKeepAliveInterval";
          }

          break;
        case 9uLL:
          if (a5 == 3)
          {
            if (a6 != a6)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInteger:a6];
            v11 = @"APSProtocolFilterResponseStatusKey";
          }

          else
          {
            if (a5 != 2)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedLongLong:a6];
            v11 = @"APSProtocolFilterResponseVersionKey";
          }

          break;
        default:
          goto LABEL_126;
      }
    }

    goto LABEL_124;
  }

  if (a4 > 29)
  {
    switch(a4)
    {
      case 0x1EuLL:
        if (a5 == 4)
        {
          goto LABEL_65;
        }

        if (a5 != 1)
        {
          goto LABEL_126;
        }

        if (a6 != a6)
        {
LABEL_65:
          v10 = [NSNumber numberWithUnsignedLongLong:a6];
          v11 = @"APSProtocolPubSubUpdateTimestamp";
        }

        else
        {
          v10 = [NSNumber numberWithInteger:a6];
          v11 = @"APSPtotocolPubsubUpdateMessageID";
        }

        break;
      case 0x20uLL:
        if (a5 == 3)
        {
          if (a6 != a6)
          {
            goto LABEL_126;
          }

          v10 = [NSNumber numberWithInteger:a6];
          v11 = @"APSProtocolPresenceActivityStatusKey";
        }

        else
        {
          if (a5 != 1 || a6 != a6)
          {
            goto LABEL_126;
          }

          v10 = [NSNumber numberWithInteger:a6];
          v11 = @"APSProtocolPresenceActivityMessageIDKey";
        }

        break;
      case 0x21uLL:
        if (a5 == 3)
        {
          if (a6 != a6)
          {
            goto LABEL_126;
          }

          v10 = [NSNumber numberWithUnsignedInteger:a6];
          v11 = @"APSProtocolFilterUpdateStatusKey";
        }

        else
        {
          if (a5 != 2)
          {
            goto LABEL_126;
          }

          v10 = [NSNumber numberWithUnsignedLongLong:a6];
          v11 = @"APSProtocolFilterUpdateVersionKey";
        }

        break;
      default:
        goto LABEL_126;
    }
  }

  else
  {
    if (a4 == 15)
    {
      if (a5 != 1 || (a6 + 0x8000) >> 16)
      {
        goto LABEL_126;
      }

      v10 = [NSNumber numberWithUnsignedInteger:a6];
      v11 = @"APSProtocolFlushWantPadding";
      goto LABEL_124;
    }

    if (a4 == 18)
    {
      if (a5 == 4)
      {
        if (a6 != a6)
        {
          goto LABEL_126;
        }

        v10 = [NSNumber numberWithInteger:a6];
        v11 = @"APSProtocolAppTokenGenerateResponseAppId";
      }

      else
      {
        if (a5 != 1 || a6 != a6)
        {
          goto LABEL_126;
        }

        v10 = [NSNumber numberWithInteger:a6];
        v11 = @"APSProtocolAppTokenGenerateResponse";
      }

      goto LABEL_124;
    }

    if (a4 != 29)
    {
      goto LABEL_126;
    }

    if (a5 == 5)
    {
      goto LABEL_98;
    }

    if (a5 != 4)
    {
      if (a5 != 1)
      {
        goto LABEL_126;
      }

      if (a6 == a6)
      {
        v10 = [NSNumber numberWithInteger:a6];
        v11 = @"APSProtocolPubSubMessageID";
        goto LABEL_124;
      }

LABEL_98:
      if (HIDWORD(a6))
      {
        goto LABEL_126;
      }

      v10 = [NSNumber numberWithInteger:a6];
      v11 = @"APSProtocolPubSubTimeout";
      goto LABEL_124;
    }

    if (a6 != a6)
    {
      goto LABEL_98;
    }

    v10 = [NSNumber numberWithInteger:a6];
    v11 = @"APSProtocolPubSubStatus";
  }

LABEL_124:
  if (v10)
  {
    [v9 setObject:v10 forKey:v11];
  }

LABEL_126:
}

- (void)setSerialItemInParameters:(id)a3 commandID:(unint64_t)a4 itemID:(unint64_t)a5 itemData:(id)a6
{
  v18 = a3;
  v9 = a6;
  v10 = v9;
  switch(a4)
  {
    case 7uLL:
      if (a5 == 1)
      {
        goto LABEL_3;
      }

      goto LABEL_128;
    case 8uLL:
      if (a5 > 7)
      {
        if (a5 > 10)
        {
          switch(a5)
          {
            case 0xBuLL:
              v11 = [[NSString alloc] initWithData:v9 encoding:4];
              v12 = @"APSProtocolGeoRegion";
              goto LABEL_126;
            case 0x13uLL:
              v11 = v9;
              v12 = @"APSProtocolClientIPAddress";
              goto LABEL_126;
            case 0x15uLL:
              v11 = [[NSString alloc] initWithData:v9 encoding:4];
              v12 = @"APSProtocolInvalidPresenceReason";
              goto LABEL_126;
          }
        }

        else if (a5 == 8)
        {
          if ([v9 length] == 2)
          {
            v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", bswap32(*[v10 bytes]) >> 16);
            v12 = @"APSProtocolLargeMessageSize";
            goto LABEL_126;
          }
        }

        else
        {
          if (a5 == 9)
          {
            goto LABEL_68;
          }

          if ([v9 length] == 8)
          {
            v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v10 bytes]));
            v12 = @"APSProtocolServerTime";
            goto LABEL_126;
          }
        }
      }

      else if (a5 > 3)
      {
        if (a5 == 4)
        {
          if ([v9 length] == 2)
          {
            v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", bswap32(*[v10 bytes]) >> 16);
            v12 = @"APSProtocolMessageSize";
            goto LABEL_126;
          }
        }

        else if (a5 == 6)
        {
          if ([v9 length] == 4)
          {
            v13 = bswap32(*[v10 bytes]);
            v11 = [NSNumber numberWithUnsignedLong:v13];
            v14 = [NSNumber numberWithBool:v13 & 1];
            [v18 setObject:v14 forKey:@"APSProtocolDualChannelSupport"];
            v15 = [NSNumber numberWithBool:(v13 >> 1) & 1];
            [v18 setObject:v15 forKey:@"APSProtocolReportLastReversePushRTT"];
            v16 = [NSNumber numberWithBool:(v13 >> 2) & 1];
            [v18 setObject:v16 forKey:@"APSProtocolFilterOptimizationSupport"];
            v17 = [NSNumber numberWithBool:(v13 >> 3) & 1];
            [v18 setObject:v17 forKey:@"APSProtocolServerRequestedTTR"];

            v12 = @"APSProtocolCapabilities";
            goto LABEL_126;
          }
        }

        else if (a5 == 7 && [v9 length] == 8)
        {
          v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v10 bytes]));
          v12 = @"APSProtocolServerTimeForBadNonce";
          goto LABEL_126;
        }
      }

      else
      {
        switch(a5)
        {
          case 1uLL:
            if ([v9 length] == 1)
            {
              v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
              v12 = @"APSProtocolConnectedResponse";
              goto LABEL_126;
            }

            break;
          case 2uLL:
            goto LABEL_48;
          case 3uLL:
LABEL_3:
            v11 = v9;
            v12 = @"APSProtocolToken";
            goto LABEL_126;
        }
      }

      goto LABEL_128;
    case 9uLL:
      switch(a5)
      {
        case 3uLL:
          if ([v9 length] == 1)
          {
            v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
            v12 = @"APSProtocolFilterResponseStatusKey";
            goto LABEL_126;
          }

          break;
        case 2uLL:
          if ([v9 length] == 8)
          {
            v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v10 bytes]));
            v12 = @"APSProtocolFilterResponseVersionKey";
            goto LABEL_126;
          }

          break;
        case 1uLL:
          v11 = v9;
          v12 = @"APSProtocolFilterResponseTokenKey";
          goto LABEL_126;
      }

      goto LABEL_128;
    case 0xAuLL:
      switch(a5)
      {
        case 1uLL:
          goto LABEL_3;
        case 2uLL:
          v11 = v9;
          v12 = @"APSProtocolTopicHash";
          goto LABEL_126;
        case 3uLL:
          v11 = v9;
          v12 = @"APSProtocolPayload";
          goto LABEL_126;
        case 4uLL:
          v11 = v9;
          v12 = @"APSProtocolMessageID";
          goto LABEL_126;
        case 5uLL:
          if ([v9 length] != 4)
          {
            goto LABEL_128;
          }

          v11 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", bswap32(*[v10 bytes]));
          v12 = @"APSProtocolMessageExpiry";
          break;
        case 6uLL:
          if ([v9 length] != 8)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v10 bytes]));
          v12 = @"APSProtocolMessageTimestamp";
          break;
        case 9uLL:
          if ([v9 length] != 1)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
          v12 = @"APSProtocolMessageStorageFlags";
          break;
        case 0xDuLL:
          if ([v9 length] != 1)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
          v12 = @"APSProtocolMessagePriority";
          break;
        case 0xFuLL:
          v11 = v9;
          v12 = @"APSProtocolBaseToken";
          goto LABEL_126;
        case 0x15uLL:
          v11 = v9;
          v12 = @"APSProtocolMessageTracingUUID";
          goto LABEL_126;
        case 0x18uLL:
          v11 = [[NSString alloc] initWithData:v9 encoding:4];
          v12 = @"APSProtocolMessageCorrelationIdentifier";
          goto LABEL_126;
        case 0x1AuLL:
          if ([v9 length] != 4)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", bswap32(*[v10 bytes]));
          v12 = @"APSProtocolMessageAPNFlags";
          break;
        case 0x1CuLL:
          if ([v9 length] != 2)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", bswap32(*[v10 bytes]) >> 16);
          v12 = @"APSProtocolMessagePushType";
          break;
        case 0x1DuLL:
          v11 = v9;
          v12 = @"APSProtocolMessagePubSubInfo";
          goto LABEL_126;
        default:
          goto LABEL_128;
      }

      goto LABEL_126;
    case 0xBuLL:
      if (a5 != 6)
      {
        if (a5 == 8 && [v9 length] == 1)
        {
          v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
          v12 = @"APSProtocolDeliveryStatus";
          goto LABEL_126;
        }

        goto LABEL_128;
      }

      if ([v9 length] != 8)
      {
        goto LABEL_128;
      }

      v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v10 bytes]));
      v12 = @"APSProtocolAckTimestampKey";
      goto LABEL_126;
    case 0xDuLL:
      if (a5 != 1 || [v9 length] != 1)
      {
        goto LABEL_128;
      }

      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
      v12 = @"APSProtocolKeepAliveResponse";
      goto LABEL_126;
    case 0xEuLL:
      if (a5 != 1 || ![v9 length])
      {
        goto LABEL_128;
      }

      v11 = v10;
      v12 = @"APSProtocolDestination";
      goto LABEL_126;
    case 0xFuLL:
      if (a5 != 1 || [v9 length] != 2)
      {
        goto LABEL_128;
      }

      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", bswap32(*[v10 bytes]) >> 16);
      v12 = @"APSProtocolFlushWantPadding";
      goto LABEL_126;
    case 0x12uLL:
      if (a5 <= 2)
      {
        if (a5 == 1)
        {
          if ([v9 length] != 1)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *[v10 bytes]);
          v12 = @"APSProtocolAppTokenGenerateResponse";
        }

        else
        {
          if (a5 != 2)
          {
            goto LABEL_128;
          }

          v11 = v9;
          v12 = @"APSProtocolAppTokenGenerateResponseToken";
        }

        goto LABEL_126;
      }

      if (a5 == 3)
      {
        if ([v9 length] == 20 || objc_msgSend(v10, "length") == 32)
        {
          v11 = v10;
          v12 = @"APSProtocolAppTokenGenerateResponseTopicHash";
          goto LABEL_126;
        }
      }

      else if (a5 == 4 && [v9 length] == 2)
      {
        v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", bswap32(*[v10 bytes]) >> 16);
        v12 = @"APSProtocolAppTokenGenerateResponseAppId";
        goto LABEL_126;
      }

      goto LABEL_128;
    case 0x17uLL:
      if (a5 == 9)
      {
LABEL_68:
        v11 = [[NSString alloc] initWithData:v9 encoding:4];
        v12 = @"APSProtocolRedirectReason";
      }

      else
      {
        if (a5 != 2)
        {
          goto LABEL_128;
        }

LABEL_48:
        v11 = [[NSString alloc] initWithData:v9 encoding:4];
        v12 = @"APSProtocolServerMetadata";
      }

      goto LABEL_126;
    case 0x1DuLL:
      if (a5 <= 2)
      {
        if (a5 == 1)
        {
          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", bswap32(*[v9 bytes]));
          v12 = @"APSProtocolPubSubMessageID";
        }

        else
        {
          if (a5 != 2)
          {
            goto LABEL_128;
          }

          v11 = v9;
          v12 = @"APSProtocolPubSubPayload";
        }
      }

      else
      {
        switch(a5)
        {
          case 3uLL:
            v11 = v9;
            v12 = @"APSProtocolPubSubToken";
            break;
          case 4uLL:
            v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *[v9 bytes]);
            v12 = @"APSProtocolPubSubStatus";
            break;
          case 5uLL:
            v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", bswap32(*[v9 bytes]));
            v12 = @"APSProtocolPubSubTimeout";
            break;
          default:
            goto LABEL_128;
        }
      }

      goto LABEL_126;
    case 0x1EuLL:
      if (a5 > 2)
      {
        if (a5 == 3)
        {
          v11 = v9;
          v12 = @"APSProtocolPubSubUpdateToken";
        }

        else
        {
          if (a5 != 4)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v9 bytes]));
          v12 = @"APSProtocolPubSubUpdateTimestamp";
        }
      }

      else if (a5 == 1)
      {
        v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", bswap32(*[v9 bytes]));
        v12 = @"APSPtotocolPubsubUpdateMessageID";
      }

      else
      {
        if (a5 != 2)
        {
          goto LABEL_128;
        }

        v11 = v9;
        v12 = @"APSProtocolPubSubUpdatePayload";
      }

      goto LABEL_126;
    case 0x20uLL:
      switch(a5)
      {
        case 1uLL:
          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", bswap32(*[v9 bytes]));
          v12 = @"APSProtocolPresenceActivityMessageIDKey";
          break;
        case 3uLL:
          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *[v9 bytes]);
          v12 = @"APSProtocolPresenceActivityStatusKey";
          break;
        case 2uLL:
          v11 = v9;
          v12 = @"APSProtocolPresenceActivityPushTokenKey";
          break;
        default:
          goto LABEL_128;
      }

      goto LABEL_126;
    case 0x21uLL:
      switch(a5)
      {
        case 1uLL:
          v11 = v9;
          v12 = @"APSProtocolFilterUpdateTokenKey";
          break;
        case 3uLL:
          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *[v9 bytes]);
          v12 = @"APSProtocolFilterUpdateStatusKey";
          break;
        case 2uLL:
          v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v9 bytes]));
          v12 = @"APSProtocolFilterUpdateVersionKey";
          break;
        default:
          goto LABEL_128;
      }

LABEL_126:
      if (v11)
      {
        [v18 setObject:v11 forKey:v12];
      }

LABEL_128:

      return;
    default:
      goto LABEL_128;
  }
}

@end