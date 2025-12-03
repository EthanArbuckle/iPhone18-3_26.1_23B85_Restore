@interface MTRCommissionerControlClusterRequestCommissioningApprovalParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRCommissionerControlClusterRequestCommissioningApprovalParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommissionerControlClusterRequestCommissioningApprovalParams

- (MTRCommissionerControlClusterRequestCommissioningApprovalParams)init
{
  v11.receiver = self;
  v11.super_class = MTRCommissionerControlClusterRequestCommissioningApprovalParams;
  v2 = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    requestID = v2->_requestID;
    v2->_requestID = &unk_284C3E4C8;

    vendorID = v3->_vendorID;
    v3->_vendorID = &unk_284C3E4C8;

    productID = v3->_productID;
    v3->_productID = &unk_284C3E4C8;

    label = v3->_label;
    v3->_label = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommissionerControlClusterRequestCommissioningApprovalParams);
  requestID = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self requestID];
  [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)v4 setRequestID:requestID];

  vendorID = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self vendorID];
  [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)v4 setVendorID:vendorID];

  productID = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self productID];
  [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)v4 setProductID:productID];

  label = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self label];
  [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)v4 setLabel:label];

  timedInvokeTimeoutMs = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self timedInvokeTimeoutMs];
  [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self serverSideProcessingTimeout];
  [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: requestID:%@ vendorID:%@; productID:%@; label:%@; >", v5, self->_requestID, self->_vendorID, self->_productID, self->_label];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedLongLongValue = 0;
  v27 = 0;
  v28 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  requestID = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self requestID];
  unsignedLongLongValue = [requestID unsignedLongLongValue];

  vendorID = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self vendorID];
  LOWORD(v27) = [vendorID unsignedShortValue];

  productID = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self productID];
  HIWORD(v27) = [productID unsignedShortValue];

  label = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self label];

  if (label)
  {
    v28 = 1;
    v29 = 0uLL;
    label2 = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self label];
    sub_238DB9BD8(v18, [label2 UTF8String], objc_msgSend(label2, "lengthOfBytesUsingEncoding:", 4));

    v29 = v18[0];
  }

  sub_2393D9C18(0x62FuLL, 0, &v23);
  if (v23)
  {
    sub_2393C7B90(v18);
    v20 = 0;
    v21 = 0;
    v19 = &unk_284BB83A8;
    v22 = 0;
    sub_238EA16C4(&v19, &v23, 0);
    sub_2393C7BF0(v18, &v19, 0xFFFFFFFF);
    v10 = sub_238F0A2EC(&unsignedLongLongValue, v18, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(v18, &v23), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(reader, &v23);
      v10 = sub_2393C7114(reader, 21, 256);
      v13 = v17;
      v12 = v10;
    }

    v14 = v10 & 0xFFFFFFFF00000000;
    v19 = &unk_284BB83A8;
    sub_238EA1758(&v21);
    sub_238EA1758(&v20);
  }

  else
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v14 = 0x98B000000000;
    v12 = 11;
  }

  sub_238EA1758(&v23);
  sub_238EA1790(&v24);
  v15 = v14 | v12;
  v16 = v13;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRCommissionerControlClusterRequestCommissioningApprovalParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x98CD00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end