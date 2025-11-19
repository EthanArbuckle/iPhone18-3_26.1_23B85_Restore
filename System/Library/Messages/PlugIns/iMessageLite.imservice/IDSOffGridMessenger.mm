@interface IDSOffGridMessenger
- (void)__im_sendRelayDeliveryReceiptForMessageID:(id)a3 senderURI:(id)a4 options:(id)a5 topLevelFields:(id)a6 completion:(id)a7;
- (void)__im_sendServiceUpdateMessageWithPreferredService:(int64_t)a3 recipientURI:(id)a4 fromURI:(id)a5 options:(id)a6 completion:(id)a7;
@end

@implementation IDSOffGridMessenger

- (void)__im_sendServiceUpdateMessageWithPreferredService:(int64_t)a3 recipientURI:(id)a4 fromURI:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (objc_opt_respondsToSelector())
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v16 = getIDSOffGridServiceUpdateMessageClass_softClass;
    v25 = getIDSOffGridServiceUpdateMessageClass_softClass;
    if (!getIDSOffGridServiceUpdateMessageClass_softClass)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __getIDSOffGridServiceUpdateMessageClass_block_invoke;
      v21[3] = &unk_65790;
      v21[4] = &v22;
      __getIDSOffGridServiceUpdateMessageClass_block_invoke(v21);
      v16 = v23[3];
    }

    v17 = v16;
    _Block_object_dispose(&v22, 8);
    v18 = [[v16 alloc] initWithPreferredServiceType:a3 senderURI:v13 recipientURI:v12];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __149__IDSOffGridMessenger_ForwardDeclareSubstitute_127513240____im_sendServiceUpdateMessageWithPreferredService_recipientURI_fromURI_options_completion___block_invoke;
    v19[3] = &unk_65740;
    v20 = v15;
    [(IDSOffGridMessenger *)self sendServiceUpdateMessage:v18 options:0 completion:v19];
  }

  else
  {
    (*(v15 + 2))(v15, 0, 0, 0);
  }
}

- (void)__im_sendRelayDeliveryReceiptForMessageID:(id)a3 senderURI:(id)a4 options:(id)a5 topLevelFields:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (objc_opt_respondsToSelector())
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v17 = getIDSOffGridServerMessageClass_softClass;
    v26 = getIDSOffGridServerMessageClass_softClass;
    if (!getIDSOffGridServerMessageClass_softClass)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = __getIDSOffGridServerMessageClass_block_invoke;
      v22[3] = &unk_65790;
      v22[4] = &v23;
      __getIDSOffGridServerMessageClass_block_invoke(v22);
      v17 = v24[3];
    }

    v18 = v17;
    _Block_object_dispose(&v23, 8);
    v19 = [[v17 alloc] initWithSenderURI:v13 recipientURI:v13 topLevelFields:v15];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __145__IDSOffGridMessenger_ForwardDeclareSubstitute_137971787____im_sendRelayDeliveryReceiptForMessageID_senderURI_options_topLevelFields_completion___block_invoke;
    v20[3] = &unk_65768;
    v21 = v16;
    [(IDSOffGridMessenger *)self sendServerMessage:v19 options:v14 completion:v20];
  }

  else
  {
    (*(v16 + 2))(v16, 0, 0, 0);
  }
}

@end