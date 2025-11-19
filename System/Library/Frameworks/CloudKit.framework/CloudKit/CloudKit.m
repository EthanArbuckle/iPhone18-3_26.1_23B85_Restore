uint64_t _CKCheckArgument(uint64_t a1, void *a2, int a3, char a4, int a5, void *a6)
{
  v12 = a2;
  if (!v12)
  {
    if (a6)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v11, @"CKErrorDomain", 12, @"%s can not be nil", a1);
      goto LABEL_9;
    }

LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    v17 = 1;
    goto LABEL_22;
  }

  v15 = objc_msgSend_length(v12, v13, v14);
  if ((a5 ^ 1 | a3) == 1 && !v15)
  {
    if (a6)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKErrorDomain", 12, @"%s can not be empty", a1);
LABEL_9:
      *a6 = v17 = 0;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (a3)
  {
    if (v15 < 0x100)
    {
      if ((objc_msgSend_hasPrefix_(v12, v16, @"cloudkit.") & 1) == 0)
      {
        v18 = v12;
        v21 = objc_msgSend_UTF8String(v18, v19, v20);
        v23 = objc_msgSend_lengthOfBytesUsingEncoding_(v12, v22, 4);
        if ((sub_1883F3A8C(v21, v23) & 1) == 0)
        {
          if (a6)
          {
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v24, @"CKErrorDomain", 12, @"%s (%@) contains invalid characters", a1, v12);
            goto LABEL_9;
          }

          goto LABEL_21;
        }
      }

      goto LABEL_14;
    }

LABEL_17:
    if (a6)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKErrorDomain", 12, @"%s (%@) is too long", a1, v12);
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  v17 = 1;
  if (v15 >= 0x100 && (a4 & 1) != 0)
  {
    goto LABEL_17;
  }

LABEL_22:

  return v17;
}

void sub_1883ECB84(uint64_t a1, const char *a2)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v24[0] = @"com.apple.ActivitySharing";
  v24[1] = @"com.apple.bluetooth";
  v25[0] = &unk_1EFA85650;
  v25[1] = &unk_1EFA85668;
  v24[2] = @"com.apple.clouddocs";
  v24[3] = @"com.apple.test.p01.B.Xaeaeg.com.apple.clouddocs";
  v24[4] = @"com.apple.photos.cloud";
  v24[5] = @"com.apple.test.p01.B.Xaeaeg.com.apple.photos.cloud";
  v25[4] = &unk_1EFA85698;
  v25[5] = &unk_1EFA85698;
  v24[6] = @"com.apple.coremotion.coldstorage";
  v24[7] = @"com.apple.health.sync.secure";
  v24[8] = @"com.apple.willow.config";
  v24[9] = @"com.apple.iad-cloudkit";
  v25[8] = &unk_1EFA856C8;
  v25[9] = &unk_1EFA856E0;
  v24[10] = @"com.apple.pages.sync";
  v24[11] = @"com.apple.numbers.sync";
  v25[10] = &unk_1EFA856F8;
  v25[11] = &unk_1EFA85710;
  v24[12] = @"com.apple.keynote.sync";
  v24[13] = @"com.apple.journal";
  v24[14] = @"com.apple.textinput.KeyboardServices";
  v24[15] = @"com.apple.security.keychain";
  v25[14] = &unk_1EFA85758;
  v25[15] = &unk_1EFA85770;
  v24[16] = @"com.apple.KeyValueService";
  v24[17] = @"com.apple.largeattachment";
  v25[16] = &unk_1EFA85788;
  v25[17] = &unk_1EFA857A0;
  v25[12] = &unk_1EFA85728;
  v25[13] = &unk_1EFA85740;
  v24[18] = @"com.apple.messages.cloud";
  v24[19] = @"com.apple.Avatars";
  v25[18] = &unk_1EFA857B8;
  v25[19] = &unk_1EFA857D0;
  v24[20] = @"com.apple.moments";
  v24[21] = @"com.apple.callhistory.cloud-storage2";
  v25[20] = &unk_1EFA85740;
  v25[21] = &unk_1EFA857E8;
  v24[22] = @"com.apple.FTMessageStoreService";
  v24[23] = @"com.apple.ProactivePredictionsBackup";
  v25[22] = &unk_1EFA85800;
  v25[23] = &unk_1EFA85818;
  v24[24] = @"com.apple.reminders";
  v24[25] = @"com.apple.SafariShared.WBSCloudBookmarksStore";
  v25[24] = &unk_1EFA85830;
  v25[25] = &unk_1EFA85848;
  v25[2] = &unk_1EFA85680;
  v25[3] = &unk_1EFA85680;
  v24[26] = @"com.apple.SafariShared.WBSCloudHistoryStore";
  v24[27] = @"com.apple.SafariShared.CloudTabs";
  v25[26] = &unk_1EFA85860;
  v25[27] = &unk_1EFA85878;
  v24[28] = @"com.apple.test.p01.B.Xaeaeg.com.apple.SafariShared.CloudTabs";
  v24[29] = @"com.apple.test.p01.B.Xaeaeg.com.apple.freeform";
  v25[28] = &unk_1EFA85878;
  v25[29] = &unk_1EFA85890;
  v24[30] = @"com.apple.freeform";
  v24[31] = @"com.apple.sharingd";
  v25[30] = &unk_1EFA85890;
  v25[31] = &unk_1EFA858A8;
  v25[6] = &unk_1EFA856B0;
  v25[7] = &unk_1EFA856B0;
  v24[32] = @"com.apple.socialgaming.sessions";
  v24[33] = @"com.apple.accessibility.TTYCallHistory";
  v25[32] = &unk_1EFA858C0;
  v25[33] = &unk_1EFA858D8;
  v24[34] = @"com.apple.vo2max";
  v24[35] = @"com.apple.managedassets";
  v25[34] = &unk_1EFA856B0;
  v25[35] = &unk_1EFA858F0;
  v24[36] = @"com.apple.test.p01.B.Xaeaeg.com.apple.icloud.events";
  v24[37] = @"com.apple.icloud.events";
  v25[36] = &unk_1EFA85908;
  v25[37] = &unk_1EFA85908;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v25, v24, 38);
  v3 = qword_1ED4B6088;
  qword_1ED4B6088 = v2;

  v22[0] = @"com.apple.backup";
  v22[1] = @"com.apple.notes";
  v23[0] = &unk_1EFA85920;
  v23[1] = &unk_1EFA85938;
  v22[2] = @"com.apple.news";
  v22[3] = @"com.apple.siri";
  v23[2] = &unk_1EFA85950;
  v23[3] = &unk_1EFA85968;
  v22[4] = @"com.apple.pay";
  v22[5] = @"com.apple.homekit";
  v23[4] = &unk_1EFA85980;
  v23[5] = &unk_1EFA856C8;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v23, v22, 6);
  v6 = qword_1ED4B6090;
  qword_1ED4B6090 = v5;

  v20[0] = @"com.apple.clouddocs";
  v20[1] = @"com.apple.test.reminders";
  v21[0] = &unk_1EFA85680;
  v21[1] = &unk_1EFA85830;
  v20[2] = @"com.apple.siri.profile";
  v20[3] = @"com.apple.test.zone_sharing.dugong.zoneish_pcs";
  v21[2] = &unk_1EFA85998;
  v21[3] = &unk_1EFA859B0;
  v20[4] = @"com.apple.test.zone_sharing.dugong.record_pcs";
  v21[4] = &unk_1EFA859B0;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v21, v20, 5);
  v9 = qword_1ED4B6098;
  qword_1ED4B6098 = v8;

  v11 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v10, @"com.apple.ckcode.ckclient.unittests");
  v12 = qword_1ED4B60A0;
  qword_1ED4B60A0 = v11;

  v14 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v13, @"com.apple.test.", @"com.apple.cloudkit.unittest.", 0);
  v15 = qword_1ED4B60A8;
  qword_1ED4B60A8 = v14;

  v17 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v16, @"com.apple.", @"iCloud.com.apple.", 0);
  v18 = qword_1ED4B60B0;
  qword_1ED4B60B0 = v17;

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1883ED1F0()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4B65D7 = result;
  return result;
}

uint64_t sub_1883ED3A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__CFString *CKContainerEnvironmentString(uint64_t a1)
{
  v1 = @"UNKNOWN ENVIRONMENT";
  if (a1 == 2)
  {
    v1 = @"Sandbox";
  }

  if (a1 == 1)
  {
    return @"Production";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1883ED834(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED844(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED854(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED864(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED874(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_1883ED884(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_1883ED890(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED8A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED8B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED8C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED8D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1883ED8E0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883ED90C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1883ED938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1883ED958(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883ED984(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883ED9B0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883ED9DC(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDA08(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDA34(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDA60(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDA8C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDAB8(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDAE4(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDB10(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDB3C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDB68(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDB94(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDBC0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDBEC(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDC18(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDC44(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDC70(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1883EDC9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1883EDCAC(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDCD8(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDD04(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDD30(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDD5C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDD88(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDDB4(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDDE0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDE0C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDE38(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDE64(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDE90(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDEBC(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDEE8(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDF14(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDF40(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDF6C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDF98(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDFC4(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDFF0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE01C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE048(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE074(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE0A0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE0CC(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE0F8(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1883EE124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1883EE144(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1883EE170(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE180(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1883EE190(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1883EE1BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE1CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE1DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE1EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE1FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE20C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE21C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE22C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE23C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE24C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE25C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

NSString *sub_1883EE7E4()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

id CKErrorUserInfoClasses()
{
  if (qword_1ED4B6660 != -1)
  {
    dispatch_once(&qword_1ED4B6660, &unk_1EFA30AF0);
  }

  v1 = qword_1ED4B6658;

  return v1;
}

uint64_t sub_1883EE968()
{
  v19 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  qword_1ED4B6658 = objc_msgSend_setWithObjects_(v19, v11, v18, v17, v16, v15, v14, v13, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1883EEF04(void *a1)
{
  v14 = 0;
  v2 = a1;
  v5 = objc_msgSend_bytes(v2, v3, v4);
  v8 = objc_msgSend_length(a1, v6, v7);
  v9 = CKHexCharFromBytes(v5, v8, &v14, 1);
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v10, v11, v9, v14, 1, 1);

  return v12;
}

_BYTE *CKHexCharFromBytes(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v4 = a2;
  v22 = *MEMORY[0x1E69E9840];
  if ((a4 & 2) != 0)
  {
    v5 = "0123456789ABCDEF";
  }

  else
  {
    v5 = "0123456789abcdef";
  }

  if (a2 >= 0x5555555555555556)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      v21 = v4;
      _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_INFO, "Warn: Hex string length is too long: %lu", &v20, 0xCu);
    }

    result = 0;
    goto LABEL_27;
  }

  v11 = (a2 - 1) >> 2;
  if (a4)
  {
    v11 = 0;
  }

  result = malloc_type_calloc(v11 + 2 * a2 + 1, 1uLL, 0xBF582324uLL);
  if (v4 < 5)
  {
    v12 = 0;
    v14 = result;
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 = 0;
    v13 = a1;
    v14 = result;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        *v14 = v5[*(v13 + i) >> 4];
        v14[1] = v5[*(v13 + i) & 0xF];
        v14 += 2;
      }

      if ((a4 & 1) == 0)
      {
        *v14++ = 32;
      }

      v12 += 4;
      v4 -= 4;
      v13 += 4;
    }

    while (v4 > 4);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  v16 = (a1 + v12);
  do
  {
    *v14 = v5[*v16 >> 4];
    v17 = *v16++;
    v18 = v14 + 2;
    v14[1] = v5[v17 & 0xF];
    v14 += 2;
    --v4;
  }

  while (v4);
  v14 = v18;
LABEL_25:
  *v14 = 0;
  if (a3)
  {
    *a3 = v14 - result;
  }

LABEL_27:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1883EF1AC(void *a1, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, sizeof(v16));
  v3 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], a2, v16, 32, 0);
  v4 = a1;
  v7 = objc_msgSend_bytes(v4, v5, v6);
  v10 = objc_msgSend_length(v4, v8, v9);
  CC_SHA256(v7, v10, v16);
  v13 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v3, v11, v12);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void sub_1883EF330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1883EF348(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = geteuid();
  if (v2 == 501 || !v2)
  {
    if (__sTestOverridesAvailable)
    {
      v5 = @"TEST_AccountInfoValidationCounter";
    }

    else
    {
      v5 = @"AccountInfoValidationCounter";
    }

    v6 = objc_msgSend_suiteName(CKUserDefaults, v3, v4);
    v7 = CFPreferencesCopyValue(v5, v6, @"mobile", *MEMORY[0x1E695E898]);
    if (v7)
    {
      v8 = v7;
      CFNumberGetValue(v7, kCFNumberNSIntegerType, &qword_1ED4B6018);
      CFRelease(v8);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v9 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v12[0] = 67109120;
        v12[1] = geteuid();
        _os_log_impl(&dword_1883EA000, v10, OS_LOG_TYPE_INFO, "Could not fetch account info cache validation counter, running as user %u", v12, 8u);
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = qword_1ED4B6018;
  v11 = *MEMORY[0x1E69E9840];
}

void CKOncePerBoot(void *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  pthread_mutex_lock(&stru_1ED4B5F80);
  if ((byte_1ED4B65DC & 1) == 0)
  {
    byte_1ED4B65DC = 1;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = qword_1ED4B65E8;
    qword_1ED4B65E8 = v6;

    v10 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v8, v9);
    v12 = objc_msgSend_integerForKey_(v10, v11, @"CKStartupTime");
    v13 = CKBootTime();
    if (v12 == v13)
    {
      v15 = objc_msgSend_objectForKey_(v10, v14, @"CKPerBootTasks");
      objc_msgSend_addObjectsFromArray_(qword_1ED4B65E8, v16, v15);

      qword_1ED4B6758 = 0;
    }

    else
    {
      v17 = v13;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v18 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        LOWORD(v51) = 0;
        _os_log_impl(&dword_1883EA000, v18, OS_LOG_TYPE_INFO, "Detected reboot. Resetting once-per-boot tasks.", &v51, 2u);
      }

      qword_1ED4B6758 = v17;
      if (v17)
      {
        v19 = 1;
        goto LABEL_11;
      }
    }
  }

  v19 = 0;
LABEL_11:
  if (objc_msgSend_containsObject_(qword_1ED4B65E8, v5, v3))
  {
    pthread_mutex_unlock(&stru_1ED4B5F80);
    if (!v19)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v23 = objc_msgSend_objectForKey_(qword_1ED4B65F0, v20, v3);
  if (!v23)
  {
    v30 = qword_1ED4B65F0;
    if (!qword_1ED4B65F0)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v32 = qword_1ED4B65F0;
      qword_1ED4B65F0 = v31;

      v30 = qword_1ED4B65F0;
    }

    v33 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v24, v25);
    objc_msgSend_setObject_forKey_(v30, v34, v33, v3);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v35 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v51 = 138543362;
      v52 = v3;
      _os_log_impl(&dword_1883EA000, v35, OS_LOG_TYPE_INFO, "Starting once-per-boot task: %{public}@", &v51, 0xCu);
    }

    pthread_mutex_unlock(&stru_1ED4B5F80);
    if (v4)
    {
      v4[2](v4);
    }

    pthread_mutex_lock(&stru_1ED4B5F80);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v36 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v51 = 138543362;
      v52 = v3;
      _os_log_impl(&dword_1883EA000, v36, OS_LOG_TYPE_INFO, "Completed once-per-boot task: %{public}@", &v51, 0xCu);
    }

    objc_msgSend_addObject_(qword_1ED4B65E8, v37, v3);
    pthread_mutex_lock(&stru_1ED4B5FC0);
    v40 = objc_msgSend_allObjects(qword_1ED4B65E8, v38, v39);
    v41 = qword_1ED4B65F8;
    qword_1ED4B65F8 = v40;

    pthread_mutex_unlock(&stru_1ED4B5FC0);
    v45 = objc_msgSend_count(qword_1ED4B65F0, v42, v43);
    v46 = qword_1ED4B65F0;
    if (v45 == 1)
    {
      qword_1ED4B65F0 = 0;
    }

    else
    {
      objc_msgSend_removeObjectForKey_(qword_1ED4B65F0, v44, v3);
    }

    pthread_cond_broadcast(&stru_1ED4B5F50);
    pthread_mutex_unlock(&stru_1ED4B5F80);
    goto LABEL_36;
  }

  v26 = v23;
  v27 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v24, v25);

  if (v26 == v27)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v28, *MEMORY[0x1E695D930], @"Recursive once per boot initialization is not allowed");
  }

  do
  {
    pthread_cond_wait(&stru_1ED4B5F50, &stru_1ED4B5F80);
  }

  while (!objc_msgSend_containsObject_(qword_1ED4B65E8, v29, v3));

  pthread_mutex_unlock(&stru_1ED4B5F80);
  if (v19)
  {
LABEL_36:
    v47 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v21, v22);
    pthread_mutex_lock(&stru_1ED4B5FC0);
    if (qword_1ED4B6758)
    {
      objc_msgSend_setInteger_forKey_(v47, v48, qword_1ED4B6758, @"CKStartupTime");
      qword_1ED4B6758 = 0;
    }

    if (qword_1ED4B65F8)
    {
      objc_msgSend_setObject_forKey_(v47, v48, qword_1ED4B65F8, @"CKPerBootTasks");
      v49 = qword_1ED4B65F8;
      qword_1ED4B65F8 = 0;
    }

    pthread_mutex_unlock(&stru_1ED4B5FC0);
  }

LABEL_41:

  v50 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1883EFE18()
{
  v0 = [CKBehaviorOptions alloc];
  qword_1ED4B6510 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1883F0048(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEFAULT, "Not using system installed binaries: %@", &v6, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Using system installed binaries", &v6, 2u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void ck_log_facilities_setup_logging_facilities()
{
  if (_sCKUseSystemInstalledBinariesPredicate != -1)
  {
    dispatch_once(&_sCKUseSystemInstalledBinariesPredicate, &unk_1EFA30770);
  }

  if (_sCKUseSystemInstalledBinaries == 1 && __sTestOverridesAvailable[0] != 1)
  {
    v0 = "com.apple.cloudkit";
  }

  else
  {
    v0 = "com.apple.cloudkit.test";
  }

  if (qword_1ED4B67C0 != v0)
  {
    qword_1ED4B67C0 = v0;
    v1 = os_log_create(v0, "CK");
    v2 = ck_log_facility_ck;
    ck_log_facility_ck = v1;

    v3 = os_log_create(v0, "PCS");
    v4 = ck_log_facility_pcs;
    ck_log_facility_pcs = v3;

    v5 = os_log_create(v0, "SQL");
    v6 = ck_log_facility_sql;
    ck_log_facility_sql = v5;

    v7 = os_log_create(v0, "STAT");
    v8 = ck_log_facility_status;
    ck_log_facility_status = v7;

    v9 = os_log_create(v0, "Request");
    v10 = ck_log_facility_request;
    ck_log_facility_request = v9;

    v11 = os_log_create(v0, "MMCS");
    v12 = ck_log_facility_mmcs;
    ck_log_facility_mmcs = v11;

    v13 = os_log_create(v0, "Asset");
    v14 = ck_log_facility_asset;
    ck_log_facility_asset = v13;

    v15 = os_log_create(v0, "Package");
    v16 = ck_log_facility_package;
    ck_log_facility_package = v15;

    v17 = os_log_create(v0, "OP");
    v18 = ck_log_facility_op;
    ck_log_facility_op = v17;

    v19 = os_log_create(v0, "TrafficBinary");
    v20 = ck_log_facility_traffic_binary;
    ck_log_facility_traffic_binary = v19;

    v21 = os_log_create(v0, "LogStats");
    v22 = ck_log_facility_logstats;
    ck_log_facility_logstats = v21;

    v23 = os_log_create(v0, "Scheduler");
    v24 = ck_log_facility_scheduler;
    ck_log_facility_scheduler = v23;

    v25 = os_log_create(v0, "NotificationListener");
    v26 = ck_log_facility_notification_listener;
    ck_log_facility_notification_listener = v25;

    v27 = os_log_create(v0, "Engine");
    v28 = ck_log_facility_engine;
    ck_log_facility_engine = v27;

    v29 = os_log_create(v0, "DataRepair");
    v30 = ck_log_facility_data_repair;
    ck_log_facility_data_repair = v29;

    v31 = os_log_create(v0, "DistributedSync");
    v32 = ck_log_facility_distributed_sync;
    ck_log_facility_distributed_sync = v31;

    v33 = os_log_create(v0, "DiscretionaryDaemon");
    v34 = ck_log_facility_ckdd;
    ck_log_facility_ckdd = v33;

    v35 = os_log_create(v0, "MockServer");
    v36 = ck_log_facility_mock;
    ck_log_facility_mock = v35;

    v37 = os_log_create(v0, "TrafficCompressed");
    v38 = ck_log_facility_traffic_compressed;
    ck_log_facility_traffic_compressed = v37;

    MEMORY[0x1EEE66BB8](v37, v38);
  }
}

void sub_1883F049C()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_initially_inactive(v0);

  v1 = dispatch_queue_create("com.apple.cloudkit.global.user_interactive", attr);
  v2 = qword_1ED4B66A0;
  qword_1ED4B66A0 = v1;

  v3 = qword_1ED4B66A0;
  v4 = dispatch_get_global_queue(33, 0);
  dispatch_set_target_queue(v3, v4);

  v5 = dispatch_queue_create("com.apple.cloudkit.global.user_initiated", attr);
  v6 = qword_1ED4B66A8;
  qword_1ED4B66A8 = v5;

  v7 = qword_1ED4B66A8;
  v8 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v7, v8);

  v9 = dispatch_queue_create("com.apple.cloudkit.default", attr);
  v10 = qword_1ED4B66B0;
  qword_1ED4B66B0 = v9;

  v11 = qword_1ED4B66B0;
  v12 = dispatch_get_global_queue(21, 0);
  dispatch_set_target_queue(v11, v12);

  v13 = dispatch_queue_create("com.apple.cloudkit.global.utility", attr);
  v14 = qword_1ED4B66B8;
  qword_1ED4B66B8 = v13;

  v15 = qword_1ED4B66B8;
  v16 = dispatch_get_global_queue(17, 0);
  dispatch_set_target_queue(v15, v16);

  v17 = dispatch_queue_create("com.apple.cloudkit.global.background", attr);
  v18 = qword_1ED4B66C0;
  qword_1ED4B66C0 = v17;

  v19 = qword_1ED4B66C0;
  v20 = dispatch_get_global_queue(9, 0);
  dispatch_set_target_queue(v19, v20);

  dispatch_activate(qword_1ED4B66A0);
  dispatch_activate(qword_1ED4B66A8);
  dispatch_activate(qword_1ED4B66B0);
  dispatch_activate(qword_1ED4B66B8);
  dispatch_activate(qword_1ED4B66C0);
}

uint64_t CKBootTime()
{
  v19 = *MEMORY[0x1E69E9840];
  result = qword_1ED4B6080;
  if (qword_1ED4B6080)
  {
    goto LABEL_4;
  }

  v16[0] = 0;
  v16[1] = 0;
  *v18 = 0x1500000001;
  v17 = 16;
  if (!sysctl(v18, 2u, v16, &v17, 0, 0))
  {
    result = v16[0];
    qword_1ED4B6080 = v16[0];
LABEL_4:
    v3 = *MEMORY[0x1E69E9840];
    return result;
  }

  v4 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v1, v2);
  v5 = [CKSignificantIssue alloc];
  v6 = [CKSourceCodeLocation alloc];
  v8 = objc_msgSend_initWithFilePath_lineNumber_(v6, v7, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/Utility/CKUtils.m", 3359);
  v10 = objc_msgSend_initWithSourceCodeLocation_format_(v5, v9, v8, @"Failed to fetch system boot time");
  objc_msgSend_handleSignificantIssue_actions_(v4, v11, v10, 0);

  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"Failed to fetch system boot time");
  objc_msgSend_UTF8String(v13, v14, v15);
  result = _os_crash();
  __break(1u);
  return result;
}

BOOL sub_1883F07C8()
{
  result = _CKUseSystemInstalledBinaries();
  _sCKUseSystemInstalledBinaries = result;
  return result;
}

BOOL _CKUseSystemInstalledBinaries()
{
  v0 = getenv("CK_DEBUG_BINARIES");
  v1 = v0 == 0;
  v2 = @"CK_DEBUG_BINARIES is set";
  if (!v0)
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = CKGetGlobalQueue(-1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1883F0048;
  block[3] = &unk_1E70BC388;
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  return v1;
}

__CFString *CKStringFromAccountStatus(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown status";
  }

  else
  {
    return off_1E70BCFC8[a1];
  }
}

id sub_1883F08E4(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695DF90];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_dictionaryWithCapacity_(v4, v6, v5);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1883F09B0;
  v14[3] = &unk_1E70C1BF0;
  v15 = v7;
  v8 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v9, v14);
  v12 = objc_msgSend_copy(v8, v10, v11);

  return v12;
}

void sub_1883F09B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_conformsToProtocol_(v6, v7, &unk_1EFA9C3D0))
  {
    v10 = objc_msgSend_CKDeepCopy(v6, v8, v9);
  }

  else
  {
    if (objc_msgSend_conformsToProtocol_(v6, v8, &unk_1EFA8BF50))
    {
      v23 = MEMORY[0x1E696AEC0];
LABEL_17:
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromProtocol(&unk_1EFA9C3D0);
      v29 = objc_msgSend_stringWithFormat_(v23, v28, @"Collection with class %@ does not support %@", v26, v27);

      goto LABEL_20;
    }

    if (!objc_msgSend_conformsToProtocol_(v6, v11, &unk_1EFA87B00))
    {
      v24 = MEMORY[0x1E696AEC0];
LABEL_19:
      v30 = objc_opt_class();
      v26 = NSStringFromClass(v30);
      v29 = objc_msgSend_stringWithFormat_(v24, v31, @"Object with class %@ cannot be copied", v26);
LABEL_20:

      v32 = [CKException alloc];
      v34 = objc_msgSend_initWithName_format_(v32, v33, *MEMORY[0x1E695D940], @"%@", v29);
      objc_exception_throw(v34);
    }

    v10 = objc_msgSend_copyWithZone_(v6, v12, 0);
  }

  v13 = v10;

  v14 = *(a1 + 32);
  v35 = v5;
  if (objc_msgSend_conformsToProtocol_(v35, v15, &unk_1EFA9C3D0))
  {
    v18 = objc_msgSend_CKDeepCopy(v35, v16, v17);
    goto LABEL_11;
  }

  if (objc_msgSend_conformsToProtocol_(v35, v16, &unk_1EFA8BF50))
  {
    v23 = MEMORY[0x1E696AEC0];
    goto LABEL_17;
  }

  if (!objc_msgSend_conformsToProtocol_(v35, v19, &unk_1EFA87B00))
  {
    v24 = MEMORY[0x1E696AEC0];
    goto LABEL_19;
  }

  v18 = objc_msgSend_copyWithZone_(v35, v20, 0);
LABEL_11:
  v21 = v18;

  objc_msgSend_setObject_forKeyedSubscript_(v14, v22, v13, v21);
}

id sub_1883F0BD0(void *a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v41, v45, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v14, v15, &unk_1EFA9C3D0))
        {
          v18 = objc_msgSend_CKDeepCopy(v14, v16, v17);
        }

        else
        {
          if (objc_msgSend_conformsToProtocol_(v14, v16, &unk_1EFA8BF50))
          {
            v29 = MEMORY[0x1E696AEC0];
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = NSStringFromProtocol(&unk_1EFA9C3D0);
            v34 = objc_msgSend_stringWithFormat_(v29, v33, @"Collection with class %@ does not support %@", v31, v32, v41);

            goto LABEL_18;
          }

          if (!objc_msgSend_conformsToProtocol_(v14, v19, &unk_1EFA87B00))
          {
            v35 = MEMORY[0x1E696AEC0];
            v36 = objc_opt_class();
            v31 = NSStringFromClass(v36);
            v34 = objc_msgSend_stringWithFormat_(v35, v37, @"Object with class %@ cannot be copied", v31);
LABEL_18:

            v38 = [CKException alloc];
            v40 = objc_msgSend_initWithName_format_(v38, v39, *MEMORY[0x1E695D940], @"%@", v34);
            objc_exception_throw(v40);
          }

          v18 = objc_msgSend_copyWithZone_(v14, v20, 0);
        }

        v21 = v18;

        objc_msgSend_addObject_(v7, v22, v21);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v23, &v41, v45, 16);
    }

    while (v11);
  }

  v26 = objc_msgSend_copy(v7, v24, v25);
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

uint64_t CKIsRunningInSyncBubble()
{
  if (qword_1ED4B66C8 != -1)
  {
    dispatch_once(&qword_1ED4B66C8, &unk_1EFA30BB0);
  }

  return byte_1ED4B65D1;
}

id CKGetGlobalQueue(uint64_t a1)
{
  if (qword_1ED4B6698 != -1)
  {
    dispatch_once(&qword_1ED4B6698, &unk_1EFA30B90);
  }

  v2 = &qword_1ED4B66B0;
  v3 = &qword_1ED4B66A0;
  v4 = &qword_1ED4B66A8;
  v5 = &qword_1ED4B66B8;
  if (a1 <= 16)
  {
    v5 = &qword_1ED4B66C0;
  }

  if (a1 <= 24)
  {
    v4 = v5;
  }

  if (a1 <= 32)
  {
    v3 = v4;
  }

  if (a1 != -1)
  {
    v2 = v3;
  }

  v6 = *v2;

  return v6;
}

void sub_1883F100C(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v41.receiver = v1;
    v41.super_class = CKProcessScopedStateManager;
    v4 = objc_msgSendSuper2(&v41, sel_init);
    if (v4)
    {
      v5 = objc_msgSend_UTF8String(@"com.apple.cloudkit.CKProcessScopedStateManager.notificationQueue", v2, v3);
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create(v5, v6);
      v8 = v4[6];
      v4[6] = v7;

      v11 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v9, v10);
      v12 = v4[2];
      v4[2] = v11;

      v13 = objc_opt_new();
      v14 = v4[5];
      v4[5] = v13;

      v15 = [CKEntitlements alloc];
      v18 = objc_msgSend_initWithCurrentProcess(v15, v16, v17);
      v19 = v4[3];
      v4[3] = v18;

      sub_1883F1394(v4, v20, v21);
      v24 = objc_msgSend_sharedOptions(CKBehaviorOptions, v22, v23);
      LODWORD(v6) = objc_msgSend_isAppleInternalInstall(v24, v25, v26);

      if (v6)
      {
        out_token = -1;
        v27 = CKNotificationKey(@"com.apple.cloudd.sleepytime", 0);
        v30 = objc_msgSend_UTF8String(v27, v28, v29);
        v31 = CKGetGlobalQueue(25);
        notify_register_dispatch(v30, &out_token, v31, &unk_1EFA30850);

        out_token = -1;
        v32 = CKNotificationKey(@"com.apple.cloudd.pcsIdentityUpdate", 0);

        v35 = objc_msgSend_UTF8String(v32, v33, v34);
        v36 = v4[6];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = sub_1886BE16C;
        v38[3] = &unk_1E70C1EF0;
        v39 = v4;
        notify_register_dispatch(v35, &out_token, v36, v38);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v37 = qword_1ED4B65A0;
  qword_1ED4B65A0 = v4;
}

void sub_1883F1394(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = objc_msgSend_count(*(a1 + 40), a2, a3);
    v5 = *(a1 + 24);
    if (v4)
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v9 = objc_msgSend_entitlementsByAddingOverlay_(v7, v8, v6);
      v10 = *(a1 + 32);
      *(a1 + 32) = v9;
    }

    else
    {
      v11 = v5;
      v7 = *(a1 + 32);
      *(a1 + 32) = v11;
    }

    v12 = *(a1 + 32);
    v13 = CKSDKVersion();
    v27 = 0;
    v15 = objc_msgSend_validateEntitlementsWithSDKVersion_error_(v12, v14, v13, &v27);
    v16 = v27;

    if ((v15 & 1) == 0)
    {
      v17 = [CKException alloc];
      v20 = objc_msgSend_code(v16, v18, v19);
      v23 = objc_msgSend_localizedDescription(v16, v21, v22);
      v25 = objc_msgSend_initWithCode_format_(v17, v24, v20, @"%@", v23);
      v26 = v25;

      objc_exception_throw(v25);
    }
  }
}

uint64_t CKSDKVersion()
{
  if (qword_1ED4B6710 != -1)
  {
    dispatch_once(&qword_1ED4B6710, &unk_1EFA30D30);
  }

  return dword_1ED4B65E0;
}

id CKNotificationKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = a1;
  v6 = CKTestNotificationPrefix();
  v8 = v6;
  if (v3)
  {
    objc_msgSend_stringWithFormat_(v4, v7, @"%@%@-%@", v6, v5, v3);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v4, v7, @"%@%@", v6, v5);
  }
  v9 = ;

  return v9;
}

__CFString *CKTestNotificationPrefix()
{
  if (__sTestOverridesAvailable)
  {
    return @"com.apple.cloudkit.testing.";
  }

  else
  {
    return &stru_1EFA32970;
  }
}

uint64_t sub_1883F15D4()
{
  result = dyld_get_program_sdk_version();
  dword_1ED4B65E0 = result;
  return result;
}

void sub_1883F15F4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (byte_1EA90C538 == 1)
  {
    v13 = objc_msgSend_sharedManager(MEMORY[0x1E69DF068], a2, a3);
    if (objc_msgSend_isSharedIPad(v13, v3, v4))
    {
      v7 = objc_msgSend_currentUser(v13, v5, v6);
      v10 = objc_msgSend_uid(v7, v8, v9);
      byte_1ED4B65D1 = v10 != geteuid();
    }

    else
    {
      byte_1ED4B65D1 = 0;
    }
  }

  else
  {
    v11 = getenv("CK_IN_SYNC_BUBBLE");
    if (v11)
    {
      v12 = atoi(v11) == 1;
    }

    else
    {
      v12 = 0;
    }

    byte_1ED4B65D1 = v12;
  }
}

id sub_1883F1F0C(void *a1)
{
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_CKShortDescriptionRedact_(a1, v2, 1);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, @"<%@: %p>", a1, a1);
  }
  v3 = ;

  return v3;
}

id CKXPCSuitableError(void *a1)
{
  v145 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_userInfo(v1, v2, v3);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7 && (objc_msgSend_CKHasCKErrorInUnderlyingErrors(v1, v8, v9) & 1) != 0)
  {
    if (qword_1ED4B6160 != -1)
    {
      dispatch_once(&qword_1ED4B6160, &unk_1EFA2EC08);
    }

    v129 = objc_opt_new();
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v10 = v1;
    v13 = objc_msgSend_userInfo(v1, v11, v12);
    v16 = objc_msgSend_allKeys(v13, v14, v15);

    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v138, v144, 16);
    if (v18)
    {
      v20 = v18;
      v21 = *v139;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v139 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v138 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(qword_1ED4B6168, v19, v23) & 1) == 0)
          {
            v25 = objc_msgSend_userInfo(v10, v19, v24);
            v27 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v23);
            objc_msgSend_setObject_forKeyedSubscript_(v129, v28, v27, v23);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v138, v144, 16);
      }

      while (v20);
    }

    v1 = v10;
    v31 = objc_msgSend_userInfo(v10, v29, v30);
    v33 = objc_msgSend_objectForKeyedSubscript_(v31, v32, @"NotFoundItemID");

    if (v33)
    {
      if (objc_msgSend_conformsToProtocol_(v33, v34, &unk_1EFA96BB0))
      {
        v38 = objc_msgSend_CKXPCSuitableString(v33, v36, v37);
        objc_msgSend_setObject_forKeyedSubscript_(v129, v39, v38, @"NotFoundItemID");
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(v129, v36, v33, @"NotFoundItemID");
      }
    }

    v128 = v33;
    v41 = objc_msgSend_userInfo(v10, v34, v35);
    v42 = *MEMORY[0x1E696AA08];
    v44 = objc_msgSend_objectForKeyedSubscript_(v41, v43, *MEMORY[0x1E696AA08]);

    if (v44)
    {
      v47 = CKXPCSuitableError(v44);
      objc_msgSend_setObject_forKeyedSubscript_(v129, v48, v47, v42);
    }

    v49 = objc_msgSend_userInfo(v10, v45, v46);
    v50 = *MEMORY[0x1E696A750];
    v52 = objc_msgSend_objectForKeyedSubscript_(v49, v51, *MEMORY[0x1E696A750]);

    if (v52)
    {
      v55 = objc_msgSend_array(MEMORY[0x1E695DF70], v53, v54);
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v56 = v52;
      v57 = v52;
      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v134, v143, 16);
      if (v59)
      {
        v60 = v59;
        v61 = *v135;
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v135 != v61)
            {
              objc_enumerationMutation(v57);
            }

            v63 = CKXPCSuitableError(*(*(&v134 + 1) + 8 * j));
            objc_msgSend_addObject_(v55, v64, v63);
          }

          v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v65, &v134, v143, 16);
        }

        while (v60);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v129, v66, v55, v50);
      v1 = v10;
      v52 = v56;
    }

    v67 = objc_msgSend_userInfo(v1, v53, v54);
    v69 = objc_msgSend_objectForKeyedSubscript_(v67, v68, @"CKFunctionError");

    if (v69)
    {
      v72 = CKXPCSuitableError(v69);
      objc_msgSend_setObject_forKeyedSubscript_(v129, v73, v72, @"CKFunctionError");
    }

    v74 = objc_msgSend_userInfo(v1, v70, v71);
    v76 = objc_msgSend_objectForKeyedSubscript_(v74, v75, @"CKSessionReadinessErrorBox");

    if (objc_opt_respondsToSelector())
    {
      v79 = objc_msgSend_CKXPCSuitableString(v76, v77, v78);
      objc_msgSend_setObject_forKeyedSubscript_(v129, v80, v79, @"CKSessionReadinessErrorBox");
    }

    v127 = v44;
    v81 = objc_msgSend_userInfo(v1, v77, v78);
    v83 = objc_msgSend_objectForKeyedSubscript_(v81, v82, @"CKSessionInvalidationContext");

    if (objc_opt_respondsToSelector())
    {
      v86 = objc_msgSend_CKXPCSuitableString(v83, v84, v85);
      objc_msgSend_setObject_forKeyedSubscript_(v129, v87, v86, @"CKSessionInvalidationContext");
    }

    v88 = objc_msgSend_userInfo(v1, v84, v85);
    v90 = objc_msgSend_objectForKeyedSubscript_(v88, v89, @"CKPartialErrors");

    if (objc_msgSend_count(v90, v91, v92))
    {
      v123 = v83;
      v124 = v76;
      v125 = v69;
      v126 = v52;
      v95 = objc_opt_new();
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v98 = objc_msgSend_allKeys(v90, v96, v97);
      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v130, v142, 16);
      if (v100)
      {
        v102 = v100;
        v103 = *v131;
        do
        {
          for (k = 0; k != v102; ++k)
          {
            if (*v131 != v103)
            {
              objc_enumerationMutation(v98);
            }

            v105 = *(*(&v130 + 1) + 8 * k);
            if (objc_msgSend_conformsToProtocol_(v105, v101, &unk_1EFA96BB0))
            {
              v108 = objc_msgSend_CKXPCSuitableString(v105, v106, v107);
              v110 = objc_msgSend_objectForKeyedSubscript_(v90, v109, v105);
              v111 = CKXPCSuitableError(v110);
              objc_msgSend_setObject_forKeyedSubscript_(v95, v112, v111, v108);
            }

            else
            {
              v108 = objc_msgSend_objectForKeyedSubscript_(v90, v106, v105);
              v110 = CKXPCSuitableError(v108);
              objc_msgSend_setObject_forKeyedSubscript_(v95, v113, v110, v105);
            }
          }

          v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v101, &v130, v142, 16);
        }

        while (v102);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v129, v114, v95, @"CKPartialErrors");
      v1 = v10;
      v69 = v125;
      v52 = v126;
      v83 = v123;
      v76 = v124;
    }

    v115 = MEMORY[0x1E696ABC0];
    v116 = objc_msgSend_domain(v1, v93, v94);
    v119 = objc_msgSend_code(v1, v117, v118);
    v40 = objc_msgSend_errorWithDomain_code_userInfo_(v115, v120, v116, v119, v129);
  }

  else
  {
    v40 = v1;
  }

  v121 = *MEMORY[0x1E69E9840];

  return v40;
}

uint64_t sub_1883F296C(void *a1, const char *a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_CKIsCKError(a1, a2, a3))
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_msgSend_userInfo(a1, v4, v5);
    v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *MEMORY[0x1E696AA08]);

    if (objc_msgSend_CKHasCKErrorInUnderlyingErrors(v9, v10, v11))
    {
      v6 = 1;
    }

    else
    {
      v14 = objc_msgSend_userInfo(a1, v12, v13);
      v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, *MEMORY[0x1E696A750]);

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v17 = v16;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v51, v56, 16);
      if (v19)
      {
        v22 = v19;
        v23 = *v52;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v52 != v23)
            {
              objc_enumerationMutation(v17);
            }

            if (objc_msgSend_CKHasCKErrorInUnderlyingErrors(*(*(&v51 + 1) + 8 * i), v20, v21))
            {
              v6 = 1;
              v29 = v17;
              goto LABEL_27;
            }
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v51, v56, 16);
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v27 = objc_msgSend_userInfo(a1, v25, v26);
      v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"CKFunctionError");

      if (objc_msgSend_CKHasCKErrorInUnderlyingErrors(v29, v30, v31))
      {
        v6 = 1;
      }

      else
      {
        v34 = objc_msgSend_userInfo(a1, v32, v33);
        v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"CKPartialErrors");

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v39 = objc_msgSend_allValues(v36, v37, v38, 0);
        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v47, v55, 16);
        if (v6)
        {
          v43 = *v48;
          while (2)
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v48 != v43)
              {
                objc_enumerationMutation(v39);
              }

              if (objc_msgSend_CKHasCKErrorInUnderlyingErrors(*(*(&v47 + 1) + 8 * j), v41, v42))
              {
                v6 = 1;
                goto LABEL_26;
              }
            }

            v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v47, v55, 16);
            if (v6)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:
      }

LABEL_27:
    }
  }

  v45 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1883F2C08(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  if (objc_msgSend_isEqualToString_(v4, v5, @"CKErrorDomain"))
  {
    isEqualToString = 1;
  }

  else
  {
    v9 = objc_msgSend_domain(a1, v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"CKInternalErrorDomain");
  }

  return isEqualToString;
}

id CKRequiredFeatureSet.init(zoneFeatures:recordFeatures:fieldFeatures:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v8 = MEMORY[0x1E69E7CC8];
  *v7 = MEMORY[0x1E69E7CC8];
  v7[1] = v8;
  v7[2] = v8;
  v11.super_class = CKRequiredFeatureSet;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1883F2D94(a1, a2, a3);

  return v9;
}

void sub_1883F2D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1883F4C9C(a1);
  v5 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18CFD59D0](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    v9 = *&v6[OBJC_IVAR___CKZoneFeature__wrapped];
    v10 = *&v6[OBJC_IVAR___CKZoneFeature__wrapped + 8];
    v12 = *&v6[OBJC_IVAR___CKZoneFeature__wrapped + 16];
    v11 = *&v6[OBJC_IVAR___CKZoneFeature__wrapped + 24];
    sub_188489F14(v9, v10);

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v54 + 16);
        sub_1884771E0();
        v54 = v16;
      }

      v13 = *(v54 + 16);
      if (v13 >= *(v54 + 24) >> 1)
      {
        sub_1884771E0();
        v54 = v17;
      }

      *(v54 + 16) = v13 + 1;
      v14 = (v54 + 32 * v13);
      v14[4] = v9;
      v14[5] = v10;
      v14[6] = v12;
      v14[7] = v11;
      v5 = v8;
    }
  }

  v18 = sub_1883F4C9C(a2);
  v19 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  while (v18 != v19)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x18CFD59D0](v19, a2);
    }

    else
    {
      if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v20 = *(a2 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_45;
    }

    v23 = *&v20[OBJC_IVAR___CKRecordFeature__wrapped];
    v24 = *&v20[OBJC_IVAR___CKRecordFeature__wrapped + 8];
    v25 = *&v20[OBJC_IVAR___CKRecordFeature__wrapped + 16];
    v26 = *&v20[OBJC_IVAR___CKRecordFeature__wrapped + 24];
    sub_188489F14(v23, v24);

    ++v19;
    if (v24)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = *(v56 + 16);
        sub_1884771FC();
        v56 = v30;
      }

      v27 = *(v56 + 16);
      if (v27 >= *(v56 + 24) >> 1)
      {
        sub_1884771FC();
        v56 = v31;
      }

      *(v56 + 16) = v27 + 1;
      v28 = (v56 + 32 * v27);
      v28[4] = v23;
      v28[5] = v24;
      v28[6] = v25;
      v28[7] = v26;
      v19 = v22;
    }
  }

  v32 = sub_1883F4C9C(a3);
  v33 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  while (v32 != v33)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x18CFD59D0](v33, a3);
    }

    else
    {
      if (v33 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v34 = *(a3 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_47;
    }

    v37 = *&v34[OBJC_IVAR___CKFieldFeature__wrapped];
    v38 = *&v34[OBJC_IVAR___CKFieldFeature__wrapped + 8];
    v39 = *&v34[OBJC_IVAR___CKFieldFeature__wrapped + 16];
    v40 = *&v34[OBJC_IVAR___CKFieldFeature__wrapped + 24];
    sub_188489F14(v37, v38);

    ++v33;
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = *(v58 + 16);
        sub_188477218();
        v58 = v44;
      }

      v41 = *(v58 + 16);
      if (v41 >= *(v58 + 24) >> 1)
      {
        sub_188477218();
        v58 = v45;
      }

      *(v58 + 16) = v41 + 1;
      v42 = (v58 + 32 * v41);
      v42[4] = v37;
      v42[5] = v38;
      v42[6] = v39;
      v42[7] = v40;
      v33 = v36;
    }
  }

  v46 = MEMORY[0x1E69E7CC8];
  v59 = MEMORY[0x1E69E7CC8];
  sub_1883F3264(v54, &unk_1EA90DB10, &unk_1886F8A40, sub_188482420);

  v47 = v59;
  sub_1883F3264(v56, &unk_1EA90D8F8, &unk_1886F8A30, sub_1884825C4);

  v48 = v46;
  v60 = v46;
  sub_1883F3264(v58, &unk_1EA90DB60, &unk_1886F8A20, sub_188482768);

  v49 = (v53 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v50 = *(v53 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v51 = *(v53 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8);
  v52 = *(v53 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 16);
  *v49 = v47;
  v49[1] = v48;
  v49[2] = v60;
}

void sub_1883F3264(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = *(*v4 + 16);
  v6 = *(a1 + 16);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
  }

  else
  {
    v10 = sub_1884056BC(a1, a2);
    sub_18844E6FC(v10, v11);
    Dictionary.reserveCapacity(_:)(v7);
    for (i = (a1 + 56); v6; --v6)
    {
      v14 = *(i - 1);
      v13 = *i;
      v16 = *(i - 3);
      v15 = *(i - 2);

      v17 = sub_1883FD9C4();
      a4(v17);

      i += 4;
    }
  }
}

void sub_1883F342C()
{
  v0 = [CKRecordZoneID alloc];
  v4 = objc_msgSend_initWithZoneName_ownerName_(v0, v1, @"_defaultZone", @"__defaultOwner__");
  v2 = sub_188589C18([CKRecordZone alloc], v4, 0);
  v3 = qword_1ED4B61C0;
  qword_1ED4B61C0 = v2;
}

id sub_1883F3530(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696B0B0];
  v3 = CKAcceptablePredicateValueClasses();
  v5 = objc_msgSend__testEncodeAndDecodeObject_allowedClasses_(v2, v4, a1, v3);

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E695D940];
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = a1;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = @"NSXPCCoder unexpectedly returned nil while encoding/decoding predicate";
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Predicate <%@> cannot be deep copied due to %@ (%@)", &v13, 0x20u);
    }

    if (CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9())
    {
      v10 = [CKException alloc];
      v12 = objc_msgSend_initWithName_format_(v10, v11, *MEMORY[0x1E695D940], @"Predicate format incompatible with CloudKit");
      objc_exception_throw(v12);
    }

    v5 = a1;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t sub_1883F3810()
{
  v0 = [CKContainer alloc];
  qword_1ED4B6108 = objc_msgSend__initWithContainerIdentifier_(v0, v1, 0);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1883F3854()
{
  objc_opt_self();
  v2 = sub_1883F3978();
  if (v2)
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v0, @"iCloud.%@", v2);
    goto LABEL_8;
  }

  v4 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v0, v1);
  v7 = objc_msgSend_untrustedEntitlements(v4, v5, v6);
  if (objc_msgSend_hasMasqueradingEntitlement(v7, v8, v9))
  {
    goto LABEL_6;
  }

  v12 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v10, v11);
  v15 = objc_msgSend_untrustedEntitlements(v12, v13, v14);
  v18 = objc_msgSend_clientPrefixEntitlement(v15, v16, v17);

  if (!v18)
  {
    v4 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v19, v20);
    v7 = objc_msgSend_processName(v4, v21, v22);
    CKWarnForInvalidApplicationIdentifier(0, v7);
LABEL_6:
  }

  v3 = 0;
LABEL_8:

  return v3;
}

id sub_1883F3978()
{
  objc_opt_self();
  v2 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v0, v1);
  v5 = objc_msgSend_untrustedEntitlements(v2, v3, v4);
  v8 = objc_msgSend_associatedApplicationBundleID(v5, v6, v7);

  if (!v8)
  {
    v11 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v9, v10);
    v14 = objc_msgSend_untrustedEntitlements(v11, v12, v13);
    v8 = objc_msgSend_applicationBundleID(v14, v15, v16);
  }

  return v8;
}

uint64_t sub_1883F3A8C(unsigned __int8 *a1, uint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("isCStyleIdentifier", "CKUtils.m", 1011, "cs");
  }

  if (!a2)
  {
    __assert_rtn("isCStyleIdentifier", "CKUtils.m", 1012, "length > 0");
  }

  v2 = *a1;
  if ((v2 - 97) < 0x1A || (v2 != 95 ? (v3 = (v2 - 65) > 0x19) : (v3 = 0), !v3))
  {
    v4 = a2 - 1;
    if (a2 == 1)
    {
      return 1;
    }

    v5 = (a1 + 1);
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = ((v7 & 0xDF) - 65);
      v9 = (v7 - 48) >= 0xAu && v8 >= 0x1A;
      if (v9 && v6 != 95 && v6 != 36)
      {
        break;
      }

      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

id sub_1883F4174(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = objc_msgSend_valueForEntitlement_(a1, a2, @"application-identifier");
    v2 = vars8;
  }

  return a1;
}

id CKAppIdentifierFromTeamAppTuple(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (qword_1ED4B6690 != -1)
  {
    dispatch_once(&qword_1ED4B6690, &unk_1EFA30B70);
  }

  if (objc_msgSend_hasPrefix_(v3, v4, @"com.apple."))
  {
    v8 = v3;
    goto LABEL_11;
  }

  v9 = qword_1ED4B6688;
  v10 = objc_msgSend_length(v3, v6, v7);
  v12 = objc_msgSend_matchesInString_options_range_(v9, v11, v3, 4, 0, v10);
  if (objc_msgSend_count(v12, v13, v14) != 1)
  {
    goto LABEL_9;
  }

  v16 = objc_msgSend_objectAtIndex_(v12, v15, 0);
  if (objc_msgSend_numberOfRanges(v16, v17, v18) != 2)
  {

LABEL_9:
    CKWarnForInvalidApplicationIdentifier(v3, v5);
    v8 = 0;
    goto LABEL_10;
  }

  v20 = objc_msgSend_rangeAtIndex_(v16, v19, 1);
  v8 = objc_msgSend_substringWithRange_(v3, v21, v20, v21);

LABEL_10:
LABEL_11:

  return v8;
}

void sub_1883F42F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_currentProcess(MEMORY[0x1E69C75D0], a2, a3);
  byte_1ED4B65D0 = objc_msgSend_isDaemon(v5, v3, v4);
}

uint64_t CKCurrentProcessIsDaemon()
{
  if (qword_1ED4B6610 != -1)
  {
    dispatch_once(&qword_1ED4B6610, &unk_1EFA30A50);
  }

  return byte_1ED4B65D0;
}

id CKShortRandomID()
{
  v10 = *MEMORY[0x1E69E9840];
  arc4random_buf(__buf, 8uLL);
  v0 = 0;
  v1 = &v8 + 1;
  do
  {
    v2 = __buf[v0];
    *(v1 - 1) = a0123456789abcd[v2 & 0xF];
    *v1 = a0123456789abcd[v2 >> 4];
    v1 += 2;
    ++v0;
  }

  while (v0 != 8);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_msgSend_initWithBytes_length_encoding_(v3, v4, &v8, 16, 1);
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t sub_1883F4C5C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t CKBoolFromCKTernary(unint64_t result, const char *a2, uint64_t a3)
{
  if (result >= 2)
  {
    v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "BOOL CKBoolFromCKTernary(CKTernary)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"CKUtils.m", 123, @"Can't go from NotSet -> BOOL");

    return 0;
  }

  return result;
}

uint64_t CKCreateDirectoryAtPathWithAttributes(void *a1, void *a2, void *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  os_unfair_lock_lock(&unk_1EA9123B8);
  v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8);
  v12 = objc_msgSend_objectForKey_(v6, v10, CKDirectoryEmptyDate);
  if (v12)
  {
    v13 = objc_msgSend_attributesOfItemAtPath_error_(v9, v11, v5, 0);
    v15 = objc_msgSend_objectForKey_(v13, v14, *MEMORY[0x1E696A308]);
    v17 = v15;
    if (v15 && objc_msgSend_compare_(v15, v16, v12) == -1)
    {
      objc_msgSend_removeItemAtPath_error_(v9, v18, v5, 0);
    }
  }

  v45 = 0;
  v19 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v9, v11, v5, 1, v6, &v45);
  v20 = v45;
  v23 = v20;
  if (v19)
  {
    goto LABEL_7;
  }

  v36 = objc_msgSend_domain(v20, v21, v22);
  if (!objc_msgSend_isEqualToString_(v36, v37, *MEMORY[0x1E696A250]))
  {

    goto LABEL_14;
  }

  v40 = objc_msgSend_code(v23, v38, v39) == 516;

  if (!v40)
  {
LABEL_14:
    if (a3)
    {
      v41 = v23;
      v35 = 0;
      *a3 = v23;
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_17;
  }

LABEL_7:
  v44 = v23;
  v24 = objc_msgSend_attributesOfItemAtPath_error_(v9, v21, v5, &v44);
  v25 = v44;

  v26 = *MEMORY[0x1E696A3A0];
  v28 = objc_msgSend_objectForKeyedSubscript_(v24, v27, *MEMORY[0x1E696A3A0]);
  v29 = *MEMORY[0x1E696A388];
  isEqualToString = objc_msgSend_isEqualToString_(v28, v30, *MEMORY[0x1E696A388]);

  if ((isEqualToString & 1) == 0)
  {
    v46 = v26;
    v47[0] = v29;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, v47, &v46, 1);
    objc_msgSend_setAttributes_ofItemAtPath_error_(v9, v34, v33, v5, 0);
  }

  v35 = 1;
  v23 = v25;
LABEL_17:

  os_unfair_lock_unlock(&unk_1EA9123B8);
  v42 = *MEMORY[0x1E69E9840];
  return v35;
}

id sub_1883F50E8(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v5 = objc_msgSend_numberOfArguments(a1, v3, v4);
  if (v5 - 1 >= 2)
  {
    v8 = v5;
    do
    {
      --v8;
      v9 = a1;
      ArgumentTypeAtIndex = objc_msgSend_getArgumentTypeAtIndex_(v9, v10, v8);
      v12 = *ArgumentTypeAtIndex;
      if (v12 == 64)
      {
        if (63 == ArgumentTypeAtIndex[1])
        {
          goto LABEL_7;
        }
      }

      else if (64 == v12)
      {
LABEL_7:
        objc_msgSend_addIndex_(v2, v6, v8);
      }
    }

    while (v8 > 2);
  }

  v13 = objc_msgSend_copy(v2, v6, v7);

  return v13;
}

uint64_t CKObjectsAreBothNilOrEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3 == v4)
  {
    isEqual = 1;
  }

  else
  {
    isEqual = 0;
    if (v3 && v4)
    {
      isEqual = objc_msgSend_isEqual_(v3, v5, v4);
    }
  }

  return isEqual;
}

id sub_1883F53A8(void *a1)
{
  v1 = qword_1ED4B6528;
  v3 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED4B6528, &unk_1EFA30690);
  }

  v4 = objc_msgSend_objectForKeyedSubscript_(qword_1ED4B6520, v2, v3);

  return v4;
}

id sub_1883F5424(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1883F54FC;
  v13[3] = &unk_1E70BED00;
  v14 = v7;
  v8 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v9, v13);
  v11 = objc_msgSend_componentsJoinedByString_(v8, v10, @", ");

  return v11;
}

void sub_1883F54FC(uint64_t a1, void *a2, void *a3)
{
  v16 = a3;
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = *(a1 + 32);
  v10 = MEMORY[0x1E696AEC0];
  if (isKindOfClass)
  {
    v11 = objc_msgSend_CKPropertiesStyleString(v16, v7, v8);
    objc_msgSend_stringWithFormat_(v10, v12, @"%@={ %@ }", v5, v11);
  }

  else
  {
    v11 = objc_msgSend_description(v16, v7, v8);
    objc_msgSend_stringWithFormat_(v10, v13, @"%@=%@", v5, v11);
  }
  v14 = ;

  objc_msgSend_addObject_(v9, v15, v14);
}

void ck_call_or_dispatch_sync_if_not_key(void *a1, const void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    if (dispatch_get_specific(a2))
    {
      v6[2](v6);
    }

    else
    {
      dispatch_sync(v5, v6);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Attempted to call ck_call_or_dispatch_sync_if_not_key with a nil queue", v8, 2u);
    }
  }
}

uint64_t CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9()
{
  if (qword_1ED4B66F8 != -1)
  {
    dispatch_once(&qword_1ED4B66F8, &unk_1EFA30CD0);
  }

  return byte_1ED4B65D7;
}

uint64_t type metadata accessor for SyncEngine()
{
  result = qword_1EA90CA50;
  if (!qword_1EA90CA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1883F57B8()
{
  v0 = [objc_allocWithZone(CKOperationGroup) init];
  v1 = [objc_allocWithZone(CKOperationConfiguration) init];
  [v1 setQualityOfService_];
  [v1 setRequestOriginator_];
  [v0 setDefaultConfiguration_];

  return v0;
}

void sub_1883F58E8(void (*a1)(uint64_t *__return_ptr), void (*a2)(uint64_t *, uint64_t, uint64_t))
{
  v5 = sub_1883F6078([v2 operationGroup]);
  v7 = v6;
  if (v6 && (sub_1883F7624() & 1) == 0)
  {
  }

  else
  {
    v11 = [v2 operationGroup];
    type metadata accessor for SyncEngine();
    v8 = [v2 scope];
    a1(&v14);

    v12 = v14;
    v13 = v15;
    a2(&v12, v5, v7);

    v9 = sub_1883F7EE0();
    sub_1883F60E8(v9, v10, v11);
  }
}

uint64_t sub_1883F5A54()
{
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[10];
}

void sub_1883F5A6C()
{
  v2[125] = v0;
  v2[126] = v1;
  v2[130] = 0;
  v2[132] = 0x3000000000000000;
}

void sub_1883F5A94()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F5BA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1883F5BB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1883F5BF4()
{
  sub_1883F7FF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v7);
  v9 = *(v8 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00]();
  v10 = sub_188411130();
  sub_188404A44(v10);
  sub_1883FEFF8();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v0;
  v11[5] = v6;
  v11[6] = v4;
  v11[7] = v2;
  v12 = v0;
  v13 = v6;
  sub_1883F5CC0(v4);
  sub_1883FF490();
  sub_188453610();

  sub_1883FDCC0();
}

uint64_t sub_1883F5CC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1883F5E18(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1883F4C5C(0, a5, a6);
    sub_1883F66E4(a7, a5, a6);
    Set.Iterator.init(_cocoa:)();
    v9 = v33;
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v16 = v37;
  }

  else
  {
    v15 = 0;
    v17 = -1 << *(a4 + 32);
    v13 = a4 + 56;
    v18 = *(a4 + 56);
    sub_1884110C4();
    v16 = v19 & v20;
  }

  v21 = a3;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v29 = a5;
      v30 = a6;
      v22 = 0;
      v28 = v14;
      v23 = (v14 + 64) >> 6;
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v9 < 0)
        {
          if (!__CocoaSet.Iterator.next()() || (sub_1883F4C5C(0, v29, v30), swift_dynamicCast(), v27 = v32, v21 = a3, !v32))
          {
LABEL_23:
            v14 = v28;
            goto LABEL_24;
          }
        }

        else
        {
          if (!v16)
          {
            while (1)
            {
              v25 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              if (v25 >= v23)
              {
                v16 = 0;
                goto LABEL_23;
              }

              v16 = *(v13 + 8 * v25);
              ++v15;
              if (v16)
              {
                v15 = v25;
                goto LABEL_15;
              }
            }

            __break(1u);
            break;
          }

LABEL_15:
          v26 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
          v27 = *(*(v9 + 48) + ((v15 << 9) | (8 * v26)));
          if (!v27)
          {
            goto LABEL_23;
          }
        }

        *a2++ = v27;
        ++v22;
        if (v24 == v21)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    *a1 = v9;
    a1[1] = v13;
    a1[2] = v14;
    a1[3] = v15;
    a1[4] = v16;
  }
}

uint64_t sub_1883F6078(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1883F60E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x18CFD5010]();

  [a3 setName_];
}

void sub_1883F6164()
{

  JUMPOUT(0x18CFD5140);
}

void sub_1883F6188(char a1@<W8>)
{
  *(v1 + 360) = a1;
  *(v1 + 361) = *v2;
  *(v1 + 364) = *(v2 + 3);
  *(v1 + 368) = 0;
  *(v1 + 376) = 0;
}

BOOL sub_1883F61B0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((sub_1883F7624() & 1) == 0)
  {
    return 0;
  }

  v5[6] = 45;
  v5[7] = 0xE100000000000000;
  sub_18845B108();
  v2 = StringProtocol.components<A>(separatedBy:)();
  v6[0] = 0x6974616D6F747541;
  v6[1] = 0xE900000000000063;
  MEMORY[0x1EEE9AC00]();
  v5[2] = v6;
  v3 = sub_18850DD84(sub_1884E047C, v5, v2);

  return v3;
}

void *sub_1883F62D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  v4 = sub_1883FF58C();
  j__malloc_size(v4);
  sub_1883FE878();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t sub_1883F633C()
{
  sub_188404C04();
  sub_1883F653C();
  sub_1883F7DB8();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_1883F7E38(v3);
  *v4 = v5;
  sub_1883F9ED8(v4);
  sub_1883F6548();

  return sub_1883F6A54(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1883F63D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1883F664C(v1, &selRef_zoneIDs, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0);
  if (v3)
  {
    sub_1883F657C(v3, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0);
    sub_1883FD9FC();

    v5 = 1;
  }

  else
  {
    v6 = sub_1883FF6D0();
    sub_188404AD0();
    sub_1883F4C5C(v7, v8, v9);
    sub_188404AD0();
    sub_1883F66E4(v10, v11, v12);
    sub_1883FDE28();
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v6) = sub_18850E3B8(v13);

    if (v6)
    {
      v1 = 0;
      v5 = 2;
    }

    else
    {
      v1 = sub_1883FF6D0();
      sub_1883FDE28();
      v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1883F657C(v14, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0);
      sub_1883FD9FC();

      v5 = 0;
    }
  }

  *a1 = v1;
  *(a1 + 8) = v5;
  return result;
}

void sub_1883F6560(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x20u);
}

void *sub_1883F657C(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v9 = sub_1883F62D4(v8, 0);

    sub_1883F5E18(&v12, v9 + 4, v8, a1, a2, a3, a4);
    a4 = v10;
    sub_1883F70C4();
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v9;
}

uint64_t sub_1883F664C(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v8 = [a1 *a2];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  sub_1883F4C5C(0, a3, a4);
  sub_1883F66E4(a5, a3, a4);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t sub_1883F66E4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1883F4C5C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1883F6734(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for SyncEngine();
  v2 = sub_1883F8A48();
  sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
  v3 = swift_allocObject();
  v4 = sub_1883F7504(v3, xmmword_1886F8960);
  v4[2].n128_u64[0] = v5;
  v4[2].n128_u64[1] = v6;
  strcpy(&v4[3], "FetchChanges");
  v4[3].n128_u8[13] = 0;
  v4[3].n128_u16[7] = -5120;
  if (v1)
  {
    if (v1 != 1)
    {
      goto LABEL_6;
    }

    v7 = 0x6369666963657053;
  }

  else
  {
    v7 = 0x646564756C637845;
  }

  v1 = 3;
  sub_1883F93D4();
  sub_1883F8CAC();
  v3 = v8;
  v8[1].n128_u64[0] = 3;
  v8[4].n128_u64[0] = v7;
  v8[4].n128_u64[1] = 0xED000073656E6F5ALL;
LABEL_6:
  if (v1 >= v3[1].n128_u64[1] >> 1)
  {
    sub_1883FA1B0();
    v3 = v14;
  }

  v9 = 0xE600000000000000;
  if (v2)
  {
    v9 = 0xE900000000000063;
  }

  v10 = 0x6C61756E614DLL;
  if (v2)
  {
    v10 = 0x6974616D6F747541;
  }

  v3[1].n128_u64[0] = v1 + 1;
  v11 = &v3[v1];
  v11[2].n128_u64[0] = v10;
  v11[2].n128_u64[1] = v9;
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_1883F94A4();
  v12 = sub_1883F7D34();

  return v12;
}

uint64_t sub_1883F68C4()
{
  sub_1883F78E0();
  v2 = v0[29];
  v1 = v0[30];
  v0[33] = sub_1883F6A78();
  sub_1883F6B10((v0 + 2));
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_188412B68;

  return sub_1883F781C();
}

uint64_t sub_1883F69D8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1883F69F4(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1883F7EE0();
}

uint64_t sub_1883F6A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1883F68C4, 0, 0);
}

uint64_t sub_1883F6A78()
{
  if (*(v1 + OBJC_IVAR___CKSyncEngine_swiftEngine))
  {

    sub_1883FA550();
    sub_1883F793C();

    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1883F6B10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 scope];
  sub_1883F63D4(&v84);

  v5 = v84;
  v6 = v85;
  v7 = [v2 operationGroup];
  sub_1883FDECC();
  sub_1883F4C5C(v8, v9, v10);
  sub_1883FDECC();
  sub_1883F66E4(v11, v12, v13);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = Dictionary.init(dictionaryLiteral:)();

  v16 = v7;
  if (!v7)
  {
    type metadata accessor for SyncEngine();
    v16 = sub_1883F57B8();
  }

  v75 = v5;
  v76 = v6;
  v77 = v16;
  v78 = v14;
  v79 = v15;
  v80 = 1;
  v81 = 0;
  v82 = 0;
  v83 = 3;
  sub_1883F697C(&v75, &v73);
  v17 = v7;
  sub_1883F69F4(v16);
  v68 = a1;
  v66 = v5;
  v65 = v6;
  v64 = v16;
  if (v18 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
  {
  }

  else
  {
    v19 = v75;
    v20 = v76;
    type metadata accessor for SyncEngine();
    v73 = v19;
    LOBYTE(v74) = v20;

    sub_1883F6734(&v73);

    v21 = sub_1883F7EE0();
    sub_1883F60E8(v21, v22, v16);
  }

  sub_1883F7768(&v75);
  v23 = [v2 prioritizedZoneIDs];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v67 = v2;
  v25 = [v2 zoneConfigurations];
  sub_1883F4C5C(0, &qword_1EA90C638, off_1E70BA850);
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1883FF4BC();
  v27 = Dictionary.init(dictionaryLiteral:)();
  v63 = v24;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v29 = ~(-1 << *(v26 + 32));
    v28 = v26 + 64;
    v32 = *(v26 + 64);
    sub_1884110C4();
    v30 = v33 & v34;
    v31 = v26;
  }

  v35 = 0;
  v36 = (v29 + 64) >> 6;
  v70 = v36;
  v71 = v31;
  v69 = v28;
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v37 = v35;
  v38 = v35;
  if (v30)
  {
LABEL_15:
    sub_1883FA4B8();
    v30 = v40 & v39;
    v42 = (v38 << 9) | (8 * v41);
    v43 = *(*(v31 + 56) + v42);
    v44 = *(*(v31 + 48) + v42);
    v43;
    if (!v44)
    {
LABEL_29:
      sub_1883F70C4();

      v59 = [v67 defaultZoneConfiguration];
      sub_1883F77C8(&v73);

      v60 = v73;
      v61 = v74;
      result = [v67 forceFetchChanges];
      *v68 = v66;
      *(v68 + 8) = v65;
      *(v68 + 16) = v64;
      *(v68 + 24) = v63;
      *(v68 + 32) = v27;
      *(v68 + 40) = v60;
      *(v68 + 48) = v61;
      *(v68 + 56) = result;
      *(v68 + 64) = 3;
      return result;
    }

    while (1)
    {
      v45 = v44;
      sub_1883F77C8(&v73);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v27;
      sub_188486310();
      v49 = *(v27 + 16);
      v50 = (v48 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        break;
      }

      v52 = v47;
      v53 = v48;
      sub_18844E6FC(&unk_1EA90E620, &unk_1886FBC40);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v51))
      {
        sub_188486310();
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_33;
        }

        v52 = v54;
      }

      v27 = v72;
      if (v53)
      {
        sub_188415178();
      }

      else
      {
        sub_1883FF41C(v72 + 8 * (v52 >> 6));
        *(*(v72 + 48) + 8 * v52) = v45;
        sub_188415178();

        v56 = *(v72 + 16);
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_32;
        }

        *(v72 + 16) = v58;
      }

      v35 = v38;
      v31 = v71;
      v28 = v69;
      v36 = v70;
      if ((v71 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      if (__CocoaDictionary.Iterator.next()())
      {
        swift_dynamicCast();
        v44 = v73;
        swift_dynamicCast();
        v38 = v35;
        if (v44)
        {
          continue;
        }
      }

      goto LABEL_29;
    }
  }

  else
  {
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v36)
      {
        goto LABEL_29;
      }

      ++v37;
      if (*(v28 + 8 * v38))
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1883F7138()
{

  return swift_once();
}

uint64_t sub_1883F7264()
{

  return swift_once();
}

__n128 sub_1883F7294()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  return *(v0 + 72);
}

uint64_t sub_1883F72CC(unint64_t *a1)
{

  return sub_188431C90(a1);
}

uint64_t sub_1883F7334(unint64_t *a1)
{

  return sub_188431628(a1);
}

uint64_t sub_1883F7358(unint64_t *a1)
{

  return sub_1884A4A30(a1);
}

uint64_t sub_1883F737C(unint64_t *a1)
{

  return sub_1884A5854(a1);
}

uint64_t sub_1883F73A0(unint64_t *a1)
{

  return sub_1884A5C40(a1);
}

uint64_t sub_1883F73C4()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1883F7414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 56) + 16 * v7;
  result = *v8;
  v10 = *(v8 + 8);
  *v8 = v5;
  *(v8 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1883F7480()
{

  return swift_once();
}

uint64_t sub_1883F74B4(uint64_t result)
{
  *(result + 8) = sub_1884D2FC0;
  v2 = *(v1 + 536);
  return result;
}

uint64_t sub_1883F74DC(uint64_t result)
{
  *(result + 8) = sub_18840E194;
  v2 = *(v1 + 1856);
  return result;
}

uint64_t sub_1883F7594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 16);

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_1883F7604()
{

  return swift_once();
}

uint64_t sub_1883F7624()
{

  do
  {
    while (1)
    {
      v0 = String.Iterator.next()();
      if (!v0.value._object)
      {

        object = String.Iterator.next()().value._object;

        if (object)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v1 = String.Iterator.next()();
      if (!v1.value._object)
      {

        return 1;
      }

      if (v0.value._countAndFlagsBits != v1.value._countAndFlagsBits || v0.value._object != v1.value._object)
      {
        break;
      }
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v3 & 1) != 0);

LABEL_15:

  return 0;
}

id sub_1883F77C8@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 shouldFetchAssetContents];
  result = [v1 resultsLimit];
  *a1 = v3;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1883F781C()
{
  sub_1883F7120();
  v8 = *MEMORY[0x1E69E9840];
  *(v1 + 104) = v0;
  memcpy((v1 + 16), v2, 0x48uLL);
  v3 = *MEMORY[0x1E69E9840];
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1883F78B4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1883F791C(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

id sub_1883F7984(id a1, SEL a2)
{

  return [a1 a2];
}

void sub_1883F79A0()
{

  _StringGuts.grow(_:)(34);
}

uint64_t sub_1883F79DC()
{
  v2 = *(*(v1 - 240) + 8);
  result = v0;
  v4 = *(v1 - 224);
  return result;
}

uint64_t sub_1883F79F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  result = *(v6 + 8 * v5);
  *(v6 + 8 * v5) = v4;
  return result;
}

id sub_1883F7A00(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1883F7A18()
{
  v2 = *(v0 + 656);
  v3 = *(v0 + 632);
}

void sub_1883F7A44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1883F7A64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_188501374(&a9, a2, v9, v10, v11, v12);
}

uint64_t sub_1883F7A94(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 16);
  return result;
}

uint64_t sub_1883F7B10@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

Swift::Int sub_1883F7B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a12 + 40);

  return NSObject._rawHashValue(seed:)(v13);
}

void sub_1883F7B60()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_1883F7BE8()
{

  return swift_beginAccess();
}

uint64_t sub_1883F7CB8()
{
  result = v0[51];
  v2 = v0[47];
  v3 = v0[48];
  v4 = v0[46];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[41];
  v9 = v0[37];
  v8 = v0[38];
  return result;
}

uint64_t sub_1883F7CE8()
{

  return sub_1883FE340(v0, v1, (v2 - 104));
}

uint64_t sub_1883F7D14()
{

  return swift_once();
}

uint64_t sub_1883F7D34()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_1883F7D58(uint64_t result)
{
  *(v2 + 6504) = result;
  *(result + 16) = &unk_1886FB6C0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1883F7D78(uint64_t a1)
{
  *(a1 + 8) = sub_18840E004;
  v3 = *(v2 + 368);
  return v1;
}

void sub_1883F7DB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void sub_1883F7DC8()
{

  JUMPOUT(0x18CFD5140);
}

void sub_1883F7DEC(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void sub_1883F7F10()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F8010(uint64_t result)
{
  *(v2 + 1960) = result;
  *(result + 16) = v3;
  *(result + 24) = v1;
  return result;
}

void sub_1883F8038()
{
}

uint64_t sub_1883F8050()
{
  sub_1883F78E0();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_1883F7E38(v4);
  *v5 = v6;
  v5[1] = sub_18840FF64;

  return v8(v1);
}

BOOL sub_1883F813C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_188404AE8(va, a1);
}

uint64_t sub_1883F816C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1883F819C()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return sub_18845D450(v3, nullsub_4);
}

uint64_t sub_1883F81E8()
{

  return _BridgedStoredNSError.userInfo.getter();
}

uint64_t sub_1883F8250()
{

  return sub_1884AB374(v3, v2, v0, v1);
}

uint64_t sub_1883F828C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return _typeName(_:qualified:)();
}

void sub_1883F82B8()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_1883F82D4(uint64_t a1)
{
  *(a1 + 8) = sub_1884CE474;
  v3 = *(v1 + 280);
  return v2;
}

void sub_1883F8358()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F8370()
{

  return specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
}

uint64_t sub_1883F83D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_18844E6FC(a5, a6);
}

BOOL sub_1883F8438()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void sub_1883F8468(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1883F8488()
{
  v2 = v0[200];
  v3 = v0[199];
  v4 = v0;
  v5 = v0[198];
  v6 = v4[197];
  *(v1 - 136) = v3;
  *(v1 - 128) = v6;
  v7 = v4[193];
  *(v1 - 160) = v4[196];
  *(v1 - 152) = v7;
  v8 = v4[191];
  v9 = v4[181];
  v10 = v4[171];
  v11 = v4[170];
  v12 = v4[169];
  *(v1 - 144) = v4[168];
}

void *sub_1883F84CC(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
  return a1 + 5;
}

uint64_t sub_1883F8518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1883F6734(va);
}

void sub_1883F8544()
{
}

__n128 sub_1883F85E4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __n128 a37)
{
  result = a37;
  a1[1] = a37;
  return result;
}

void *sub_1883F8640()
{

  return sub_188470D2C(v0);
}

uint64_t sub_1883F8658(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  return *a1;
}

uint64_t sub_1883F869C()
{
}

uint64_t sub_1883F86B8()
{

  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_1883F86D0()
{

  return __CocoaDictionary.makeIterator()();
}

uint64_t sub_1883F86EC()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_1883F8714()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 144);
  return result;
}

__n128 sub_1883F8724(uint64_t a1)
{
  *(v3 + 56) = a1;
  result = *(v3 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  *(a1 + 40) = v2;
  return result;
}

uint64_t sub_1883F87BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

void sub_1883F87C4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 - 128) = a1;
  *(v3 - 120) = a2;
  *(v3 - 112) = a3 & 1;
  *(v3 - 104) = 0;
  *(v3 - 96) = 1;
}

uint64_t sub_1883F87FC()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1883F8854(unint64_t *a1)
{

  return sub_188431C90(a1);
}

uint64_t sub_1883F8890(unint64_t *a1)
{

  return sub_188431628(a1);
}

uint64_t sub_1883F88B4(unint64_t *a1)
{

  return sub_1884A4A30(a1);
}

uint64_t sub_1883F88D8(unint64_t *a1)
{

  return sub_1884A5854(a1);
}

uint64_t sub_1883F88FC(unint64_t *a1)
{

  return sub_1884A5C40(a1);
}

uint64_t sub_1883F8938()
{

  return _typeName(_:qualified:)();
}

uint64_t sub_1883F899C()
{
}

uint64_t sub_1883F89B8()
{

  return swift_once();
}

uint64_t sub_1883F89D8(uint64_t result)
{
  *(result + 8) = sub_1884CE5FC;
  v2 = *(v1 + 280);
  return result;
}

uint64_t sub_1883F8A00(uint64_t a1)
{
  *(a1 + 8) = sub_1884D4720;
  v2 = *(v1 + 1000);
  v3 = *(v1 + 992);
  return 0;
}

BOOL sub_1883F8A48()
{

  return sub_1883F61B0(v1, v0);
}

uint64_t sub_1883F8A98()
{

  return MEMORY[0x1EEDC6500](v0, v1, v2);
}

uint64_t sub_1883F8B14(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

uint64_t sub_1883F8B5C(uint64_t a1)
{
  v2 = (*(v1 + 56) + 16 * a1);
  v3 = v2[8];
  return *v2;
}

uint64_t sub_1883F8BA4()
{
  result = v1;
  *(v2 - 248) = *(v0 + 8);
  return result;
}

uint64_t sub_1883F8BC4()
{

  return _BridgedStoredNSError.code.getter();
}

uint64_t sub_1883F8C00()
{

  return swift_slowAlloc();
}

uint64_t sub_1883F8C2C()
{
  v2 = v0[87];
  v3 = v0[72];
  v4 = v0[71];

  return swift_willThrow();
}

uint64_t sub_1883F8C64()
{
}

void sub_1883F8CAC()
{
  sub_1884007CC();
  if (v5)
  {
    sub_1883F876C();
    if (v7 != v8)
    {
      sub_1883FE588();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_18840AF6C(v6);
  if (v3)
  {
    sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
    v9 = sub_1883FF58C();
    j__malloc_size(v9);
    sub_1883F9194();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1883F8DFC()
{

  return swift_dynamicCast();
}

void sub_1883F8EAC()
{
  sub_1883FE944(v0);

  JUMPOUT(0x18CFD7E80);
}

void sub_1883F8EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 624);
  v13 = *(v10 + 584);
  v14 = *(v10 + 568);
  v15 = *(v10 + 728);
  v16 = *(*(v10 + 536) + 128);
  a10 = *(v10 + 576);

  sub_18850BE74(&a10, 1);
}

uint64_t sub_1883F8F38()
{

  return swift_asyncLet_begin();
}

void sub_1883F8F74()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_1883F8FD0()
{

  return swift_beginAccess();
}

uint64_t sub_1883F9064()
{

  return swift_beginAccess();
}

BOOL sub_1883F9084()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1883F909C(uint64_t result)
{
  *(result + 8) = sub_1884D6760;
  v2 = *(v1 + 1376);
  v3 = *(v1 + 1304);
  return result;
}

uint64_t sub_1883F91E4()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

__n128 sub_1883F9210()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  return *(v0 + 120);
}

id sub_1883F9228(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_1883F92B0()
{

  _StringGuts.grow(_:)(32);
}

uint64_t sub_1883F9324(uint64_t result)
{
  *(result + 16) = sub_1884C2328;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1883F933C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1883F9374(uint64_t a1)
{
  *(a1 + 8) = sub_1884D2AA8;
  v3 = v2[78];
  v4 = v2[73];
  v5 = v2[72];
  v6 = v2[71];
  return v1;
}

uint64_t sub_1883F9468()
{

  return swift_slowAlloc();
}

uint64_t sub_1883F9480(uint64_t result)
{
  v3 = result & ~(v1 << *(v2 + 32));
  v4 = (v1 << v3) & ~*(v2 + 64 + 8 * (v3 >> 6));
  return result;
}

unint64_t sub_1883F94A4()
{
  result = qword_1EA90C8C8;
  if (!qword_1EA90C8C8)
  {
    sub_18844E798(&qword_1EA90D330, &qword_1886F75D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C8C8);
  }

  return result;
}

uint64_t sub_1883F950C()
{
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[9];
}

uint64_t sub_1883F95B4@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 32 * v1);
  v4 = v3[7];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
}

void sub_1883F95DC()
{

  JUMPOUT(0x18CFD5140);
}

id sub_1883F9648(uint64_t a1)
{
  *(v2 + 6536) = a1;
  *(a1 + 16) = &unk_1886FB708;
  *(a1 + 24) = v1;

  return v3;
}

uint64_t sub_1883F9674(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1883F6734(va);
}

uint64_t sub_1883F96C8()
{

  return sub_18841E3F4(v1, 0, v0, v2);
}

void sub_1883F9744()
{
  v1 = v0[12];
  v2 = v0[9];
  v0[5] = 0;
}

uint64_t sub_1883F97C0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 32);
  return v2;
}

void sub_1883F97E8()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F9804()
{
  v4 = *(v2 - 232);

  return sub_1883F9FEC(v4, v0, v1);
}

__n128 sub_1883F984C(__n128 *a1)
{
  v1[9].n128_u64[1] = a1;
  result = v1[4];
  a1[1] = result;
  return result;
}

id sub_1883F986C@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1 + *a1;

  return v1;
}

uint64_t sub_1883F988C()
{
  v1 = v0[134];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  return *(v0[124] + 16);
}

uint64_t sub_1883F98D8()
{
}

void sub_1883F98FC()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F992C()
{
}

char *sub_1883F9944@<X0>(unint64_t a1@<X8>)
{

  return sub_18840489C((a1 > 1), v1, 1);
}

uint64_t sub_1883F9984()
{

  return swift_slowAlloc();
}

uint64_t sub_1883F99B0()
{

  return String.init<A>(_:)();
}

uint64_t sub_1883F99D0()
{

  return swift_dynamicCast();
}

uint64_t sub_1883F99F0(void *a1)
{
  *v5 = a1;
  a1[3] = v1;
  a1[4] = v2;
  a1[1] = v4;
  a1[2] = v3;
  v7 = *v2;
  return v4;
}

uint64_t sub_1883F9A44(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v1;

  return swift_task_alloc();
}

void sub_1883F9A68()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v7 = *(v0 + 273);
  sub_1883FE944((v0 + 176));

  sub_1884D11E8(v6, v5, v4, v3);
}

uint64_t sub_1883F9AB0()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t sub_1883F9AEC()
{

  return static _DictionaryStorage.convert(_:capacity:)();
}

uint64_t sub_1883F9B0C()
{
}

void sub_1883F9B24()
{
  v1[54] = v0;
  v1[60] = 0;
  v1[62] = 0x7000000000000000;
}

uint64_t sub_1883F9B44()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_1883F9B98(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t sub_1883F9BEC(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = (-1 << v3) & ~*(v2 + 8 * (v3 >> 6));
  return result;
}

uint64_t sub_1883F9C4C()
{

  return swift_once();
}

uint64_t sub_1883F9CA4(unint64_t *a1)
{

  return sub_188431C90(a1);
}

uint64_t sub_1883F9CF4(unint64_t *a1)
{

  return sub_188431628(a1);
}

uint64_t sub_1883F9D18(unint64_t *a1)
{

  return sub_1884A4A30(a1);
}

uint64_t sub_1883F9D3C(unint64_t *a1)
{

  return sub_1884A5854(a1);
}

uint64_t sub_1883F9D60(unint64_t *a1)
{

  return sub_1884A5C40(a1);
}

uint64_t sub_1883F9E2C()
{

  return swift_once();
}

void sub_1883F9F18()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F9F58(uint64_t result)
{
  *(result + 8) = sub_18850AC4C;
  v2 = *(v1 + 56);
  return result;
}

void sub_1883F9F80(uint64_t a1@<X8>)
{
  *(a1 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v3 << v1;
  *(v4[6] + 8 * v1) = v2;
  *(v4[7] + 8 * v1) = v5;
  ++v4[2];
}

uint64_t sub_1883F9FEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18844E6FC(a2, a3);
  sub_1883F7B50(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1883FA058()
{

  JUMPOUT(0x18CFD5140);
}

void sub_1883FA074(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1883FA0B8()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_1883FA110()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1883FA18C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_1883FA1B0()
{

  sub_1883F8CAC();
}

uint64_t sub_1883FA1D4(uint64_t result)
{
  *(result + 8) = sub_1884EB074;
  v2 = *(v1 + 6336);
  v3 = *(v1 + 6328);
  return result;
}

uint64_t sub_1883FA230(uint64_t a1)
{
  *(a1 + 8) = sub_1885075C4;
  v3 = *(v2 + 912);
  return v1;
}

BOOL sub_1883FA260(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1883FA278()
{
  v1 = 1 << *(v0 + 32);
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(v0 + 64);
}

void sub_1883FA2D8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 & 1;

  sub_1884613D8(a1, v7, a3, a4, a5, a6, sub_1884601D0);
}

uint64_t sub_1883FA31C()
{

  return swift_allocObject();
}

double sub_1883FA34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_18847E460(a1, a2, v11, &a11);
}

uint64_t sub_1883FA380()
{

  return sub_188487EB8(v0, v1, v2);
}

uint64_t sub_1883FA3B4()
{

  return type metadata accessor for UUID();
}

void sub_1883FA3E4()
{

  JUMPOUT(0x18CFD5140);
}

id sub_1883FA3FC()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 273);
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 112) = v3;
  *(v0 + 144) = 0;
  *(v0 + 160) = 0x1000000000000000;
  sub_1884D165C(v1, v2, v3);

  return sub_1884D1670(v1, v2, v3);
}

uint64_t sub_1883FA45C()
{
  v2 = *(v0 + 1872);
  v3 = *(*(v0 + 1856) + 208);

  return swift_task_alloc();
}

uint64_t sub_1883FA47C()
{
  v2 = *(v0 + 360);

  return swift_slowAlloc();
}

uint64_t sub_1883FA4C8()
{
  result = *(v2 + 896);
  *(v2 + 376) = v0;
  *(v2 + 384) = v1;
  return result;
}

uint64_t sub_1883FA4DC()
{
  *(v4 - 248) = v0 & 1;
  *(v4 - 240) = v1;
  *(v4 - 232) = v2;
  *(v4 - 224) = v3;
}

id sub_1883FA504(void *a1)
{

  return [a1 (v3 + 2641)];
}

uint64_t sub_1883FA520()
{

  return swift_dynamicCast();
}

void sub_1883FA550()
{
  os_unfair_lock_lock((v0 + 16));
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    os_unfair_lock_unlock((v0 + 16));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1883FA594(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1883FE340(a1, a2, &a9);
}

uint64_t sub_1883FA5BC()
{
  v7 = v0;
  v1 = v0[31];
  memcpy(&v6[7], v1, 0x48uLL);
  *(v0 + 16) = 1;
  memcpy(v0 + 17, v6, 0x4FuLL);
  memcpy(v0 + 12, v0 + 2, 0x50uLL);
  sub_1883F697C(v1, (v0 + 22));
  swift_task_alloc();
  sub_1883FF2B8();
  v0[33] = v2;
  *v2 = v3;
  v2[1] = sub_188412940;
  v4 = v0[32];

  return sub_1883FA8A4();
}

uint64_t sub_1883FA6A8(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_1883FA6E8()
{
  v2 = v0[192];
  v3 = v0[183];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[163];
}

void sub_1883FA724()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FA75C(uint64_t **a1)
{
  v2 = **a1;
  v3 = *(*a1 + 8);
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
}

uint64_t sub_1883FA784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 248) = a2;
  *(v3 + 256) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1883FA5BC, 0, 0);
}

uint64_t sub_1883FA7A4()
{
  sub_1883F7120();
  v7 = *MEMORY[0x1E69E9840];
  *(v0 + 96) = 0;
  *(v0 + 88) = 0;
  v1 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v2 = _os_activity_create(&dword_1883EA000, "engine/fetch-changes", v1, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 112) = v2;
  os_activity_scope_enter(v2, (v0 + 88));
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_188412A3C;
  v4 = *(v0 + 104);
  v5 = *MEMORY[0x1E69E9840];

  return sub_1883FA784(v3, v0 + 16, v4);
}

uint64_t sub_1883FA8A4()
{
  sub_1883F7120();
  v1[22] = v2;
  v1[23] = v0;
  memcpy(v1 + 2, v2, 0x50uLL);
  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1883FA90C()
{
  sub_1883F78E0();
  v1 = v0[22];
  v2 = v0[23];
  sub_188443314();
  v3 = swift_allocObject();
  v0[24] = v3;
  *(v3 + 16) = v2;
  memcpy((v3 + 24), v1, 0x50uLL);

  sub_1883FAB38((v0 + 2), (v0 + 12));
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_188412820;
  v5 = v0[23];

  return sub_1883FC82C();
}

uint64_t sub_1883FA9FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  sub_188443314();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

void *sub_1883FAA68()
{
  v2 = v0[792];
  v3 = v0[791];
  v4 = v0[683];

  return memcpy(v0 + 727, v0 + 685, 0x50uLL);
}

uint64_t sub_1883FAA9C()
{

  return static NSObject.== infix(_:_:)();
}

uint64_t sub_1883FAAD4(uint64_t result)
{
  *(v2 + 1936) = result;
  *(result + 16) = v3;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1883FAAE4()
{
  result = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[85];
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[82];
  v12 = v0[81];
  return result;
}

void sub_1883FABA8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v34 = type metadata accessor for UUID();
  v11 = sub_1883F70DC(v34);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1883F7100();
  v18 = v17 - v16;
  v19 = *v5;
  sub_1883FD800();
  sub_1883F8964(v20, v21);
  if (v24)
  {
    __break(1u);
    goto LABEL_11;
  }

  v25 = v22;
  v26 = v23;
  sub_18844E6FC(a4, a5);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v19))
  {
    goto LABEL_5;
  }

  v27 = *v8;
  sub_1883FD800();
  if ((v26 & 1) != (v29 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v25 = v28;
LABEL_5:
  v30 = *v8;
  if (v26)
  {
    v31 = *(v30 + 56);
    v32 = *(v31 + 8 * v25);
    *(v31 + 8 * v25) = a1;
    sub_1883F8178();
  }

  else
  {
    (*(v13 + 16))(v18, a2, v34);
    sub_188403C24(v25, v18, a1, v30);
    sub_1883F8178();
  }
}

uint64_t sub_1883FAD40()
{
  sub_1883F7120();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1884061E0;
  v4 = sub_1883FE860();

  return sub_1883FAF24(v4, v5);
}

uint64_t sub_1883FADD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1884061E0;

  return v8();
}

void sub_1883FAEF0()
{
  v3 = v1[789];
  v1[331] = v0;
  v1[332] = v2;
}

uint64_t sub_1883FAF04()
{
}

uint64_t sub_1883FAF24(uint64_t a1, const void *a2)
{
  memcpy((v2 + 16), a2, 0x50uLL);
  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_188412E44;

  return sub_1883FAFC8((v2 + 16));
}

uint64_t sub_1883FAFC8(void *__src)
{
  *(v2 + 1856) = v1;
  memcpy((v2 + 16), __src, 0x50uLL);

  return MEMORY[0x1EEE6DFA0](sub_1883FB03C, v1, 0);
}

uint64_t sub_1883FB03C()
{
  v34 = v0;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v1 = *(v0 + 1856);
  v2 = type metadata accessor for Logger();
  *(v0 + 1864) = sub_1883F85F4(v2, qword_1EA90C9F8);

  sub_1883FAB38(v0 + 16, v0 + 96);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1883FF744();
  sub_1883FB300(v0 + 16);
  if (sub_1883F9084())
  {
    v4 = *(v0 + 1856);
    sub_18840FB34();
    v32 = sub_1883FEEE0();
    *v1 = 136315394;
    v5 = sub_1883FE43C();
    sub_1883FA594(v5, v6, v7, v8, v9, v10, v11, v12, v32);
    sub_1883FE2FC();
    sub_1883FED4C();
    sub_1884439D8(__src);
    sub_1883FAB38(v0 + 16, v0 + 1776);
    CKSyncEngine.FetchChangesContext.description.getter();
    sub_188404258();
    memcpy((v0 + 1696), __src, 0x50uLL);
    v13 = sub_1883FB300(v0 + 1696);
    sub_18840C150(v13, v14, &v32);
    sub_188404FC8();

    *(v1 + 14) = __src;
    sub_1883F831C();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    sub_1884022C8();
    sub_1883FD784();
    sub_1883F82B8();
  }

  static Task<>.checkCancellation()();
  v20 = *(v0 + 1856);
  sub_1884439D8((v0 + 256));
  _s30FetchChangesPageIterationStateCMa();
  v21 = swift_allocObject();
  *(v0 + 1872) = v21;
  sub_1883FAB38(v0 + 16, v0 + 336);
  *(v21 + 96) = 0;
  *(v21 + 104) = MEMORY[0x1E69E7CC8];
  *(v21 + 112) = 0;
  *(v21 + 120) = 0;
  memcpy((v21 + 16), (v0 + 256), 0x50uLL);
  v22 = *(v0 + 40);
  *(v0 + 1880) = v22;
  sub_1883FB6F8(v22);
  v23 = *(v0 + 72);
  v24 = *(v0 + 88);
  v25 = *(v0 + 64) & 1;
  v26 = *(v0 + 80) & 1 | 0x6000000000000000;
  v27 = *(v0 + 32);
  *(v0 + 416) = *(v0 + 16);
  *(v0 + 432) = v27;
  *(v0 + 448) = *(v0 + 48);
  *(v0 + 464) = v25;
  *(v0 + 472) = v23;
  *(v0 + 480) = v26;
  *(v0 + 488) = v24;
  sub_1883FAB38(v0 + 16, v0 + 496);
  sub_1883FAB38(v0 + 16, v0 + 576);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 1888) = v28;
  *v28 = v29;
  v28[1] = sub_188402A90;
  v30 = *(v0 + 1856);

  return sub_1883FBEA8();
}

uint64_t sub_1883FB354()
{
  result = *(v0 + 176);
  v2 = *(v0 + 8);
  return result;
}

id sub_1883FB368(void *a1)
{
  *v2 = *(v3 - 128);
  *(v2 + 4) = v1;
  *a1 = v1;

  return v1;
}

uint64_t sub_1883FB38C()
{

  return sub_1883FAB38(v0 + 736, v0 + 816);
}

uint64_t sub_1883FB3A4()
{
}

unint64_t CKSyncEngine.FetchChangesContext.description.getter()
{
  v1 = *v0;
  sub_188512720();

  sub_1883F9424();
  if (v1)
  {
    v2 = 0x6C61756E616DLL;
  }

  else
  {
    v2 = 0x656C756465686373;
  }

  if (v1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE900000000000064;
  }

  MEMORY[0x18CFD5140](v2, v3);

  v4 = sub_188404394();
  MEMORY[0x18CFD5140](v4, 0xE90000000000003DLL);
  Changes = CKSyncEngine.FetchChangesOptions.description.getter();
  MEMORY[0x18CFD5140](Changes);

  sub_1883F8358();
  return 0xD00000000000001CLL;
}

uint64_t sub_1883FB4C4(void *a1)
{
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v2;
  a1[5] = v1;
}

uint64_t sub_1883FB4FC()
{

  return swift_arrayInitWithCopy();
}

void sub_1883FB548()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void sub_1883FB558()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[197];
  v11 = v0[198];
  v12 = v0[196];
  v4 = v0[193];
  v5 = v0[191];
  v6 = v0[181];
  v8 = v0[170];
  v9 = v0[171];
  v10 = v0[169];
  v7 = v0[168];
}

uint64_t sub_1883FB598(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1883FE340(a1, a2, va);
}

void sub_1883FB5B0()
{
  v1 = v0[294];
  v2 = v0[295];
  v4 = v0[297];
  v5 = v0[296];
  v6 = v0[298];
  v3 = v0[299];
}

uint64_t sub_1883FB5E0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 368);
  return result;
}

uint64_t sub_1883FB634()
{
  v2 = v0[74];
  v5 = v0[70];
  v3 = v0[69];

  return swift_slowAlloc();
}

id sub_1883FB65C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_1883FB698()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E490, &qword_1886FB3B0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1883FB6C8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E498, &qword_1886FB3B8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_1883FB6F8(void *a1)
{
  v2 = v1;
  v4 = [a1 defaultConfiguration];
  if (v4)
  {
    v37 = v4;
    v5 = CKQualityOfServiceOrdering([v4 qualityOfService]);
    if (v5 < CKQualityOfServiceOrdering(17))
    {
      if (qword_1EA90C9F0 != -1)
      {
        sub_1883F7480();
      }

      v6 = type metadata accessor for Logger();
      sub_1883FDE5C(v6, qword_1EA90C9F8);

      v7 = v37;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v10 = 136315650;
        v11 = sub_1883FE43C();
        v13 = sub_1883FE340(v11, v12, &v38);

        *(v10 + 4) = v13;
        *(v10 + 12) = 2080;
        v14 = [v7 qualityOfService];
        v16 = CKStringForQOS(v14, v15);
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = sub_1883FE340(v17, v19, &v38);

        *(v10 + 14) = v20;
        *(v10 + 22) = 2080;
        v22 = CKStringForQOS(17, v21);
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = sub_1883FE340(v23, v25, &v38);

        *(v10 + 24) = v26;
        _os_log_impl(&dword_1883EA000, v8, v9, "%s overriding operation group QoS from %s to %s", v10, 0x20u);
        swift_arrayDestroy();
        sub_1883F7B60();
        sub_1883F7B60();
      }

      [v7 setQualityOfService:17];
    }

    v27 = *(v2 + 240);
    if (v27)
    {
      v28 = v27;
      v29 = [v37 assetDownloadStagingManager];
      if (v29)
      {
        v30 = v29;

        v28 = v30;
      }

      else
      {
        [v37 setAssetDownloadStagingManager:v28];
      }
    }

    if ([v37 requestOriginator]!= 3)
    {
      [v37 setRequestOriginator:3];
    }
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v31 = type metadata accessor for Logger();
    sub_1883FDE5C(v31, qword_1EA90C9F8);
    v32 = a1;
    v37 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v37, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v32;
      *v35 = v32;
      v36 = v32;
      _os_log_impl(&dword_1883EA000, v37, v33, "BUG IN CLOUDKIT: No configuration on operation group: %@", v34, 0xCu);
      sub_188462FE0(v35);
      sub_1883F7B60();
      sub_1883F7B60();
    }
  }
}

uint64_t sub_1883FBAC4()
{
  v38 = v0;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v2 = v0[52];
  v3 = type metadata accessor for Logger();
  sub_1883FDE5C(v3, qword_1EA90C9F8);

  sub_1883FBF10((v0 + 2), (v0 + 12));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  sub_1883FBF6C((v0 + 2));
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[52];
    v7 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v36 = v1;
    *v7 = 136315394;
    v8 = sub_1883FE43C();
    v10 = sub_1883FE340(v8, v9, &v36);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    memcpy(__dst, v0 + 2, sizeof(__dst));
    sub_1883FBF10((v0 + 2), (v0 + 42));
    v11 = CKSyncEngine.Event.description.getter();
    v13 = v12;
    memcpy(v0 + 32, __dst, 0x50uLL);
    sub_1883FBF6C((v0 + 32));
    v14 = sub_1883FE340(v11, v13, &v36);

    *(v7 + 14) = v14;
    sub_1883FDDA4();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    swift_arrayDestroy();
    sub_1883F7B60();
    sub_1883FD784();
  }

  v20 = v0[52];
  Strong = swift_weakLoadStrong();
  v0[53] = Strong;
  if (Strong)
  {
    v22 = Strong;
    v23 = v0[52];
    v24 = *(v23 + 152);
    v25 = swift_allocObject();
    v0[54] = v25;
    memcpy(v25 + 2, v0 + 2, 0x50uLL);
    v25[12] = v22;
    v25[13] = v23;

    sub_1883FBF10((v0 + 2), (v0 + 22));

    v26 = swift_task_alloc();
    v0[55] = v26;
    *v26 = v0;
    v26[1] = sub_1884076EC;

    return sub_188404984(sub_188404984, &unk_1886FAF08, v25);
  }

  else
  {
    v28 = v0[52];

    v29 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      v30 = v0[52];
      sub_1883F9984();
      __dst[0] = sub_1883F8C00();
      *v28 = 136315138;
      v31 = sub_1883FE43C();
      sub_1883FE340(v31, v32, __dst);
      sub_1883FE2FC();
      *(v28 + 4) = v1;
      sub_1883F7A44(&dword_1883EA000, v33, v34, "%s not posting event to deallocated engine");
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    sub_1883F816C();

    return v35();
  }
}

uint64_t sub_1883FBE44()
{
  v4 = *(v0 + 88);
  sub_188407804(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 96);

  v2 = *(v0 + 104);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1883FBEA8()
{
  sub_1883F7120();
  *(v1 + 416) = v0;
  memcpy((v1 + 16), v2, 0x50uLL);
  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

char *CKSyncEngine.Event.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  switch(*(v0 + 8) >> 60)
  {
    case 1:
      v20 = *(v0 + 1);
      return CKSyncEngine.Event.AccountChange.description.getter();
    case 2:
      sub_1884008F8();
      return CKSyncEngine.Event.FetchedDatabaseChanges.description.getter();
    case 3:
      v19 = *(v0 + 1);
      v22 = *(v0 + 2);
      return CKSyncEngine.Event.FetchedRecordZoneChanges.description.getter();
    case 4:
      sub_18840AE04();
      return CKSyncEngine.Event.SentDatabaseChanges.description.getter();
    case 5:
      sub_18840AE04();
      return CKSyncEngine.Event.SentRecordZoneChanges.description.getter();
    case 6:
      v30 = 0xD00000000000001ALL;
      goto LABEL_16;
    case 7:
      sub_1883F8AD0();
      v17 = (v11 + 10);
      v10 = [v12 description];
      goto LABEL_14;
    case 8:
      sub_1884008F8();
      return CKSyncEngine.Event.DidFetchRecordZoneChanges.description.getter();
    case 9:
      v30 = 0xD000000000000019;
LABEL_16:
      v21 = *(v0 + 1);
      v23 = *(v0 + 2);
      v24 = *(v0 + 3);
      v25 = *(v0 + 4);
      v26 = *(v0 + 5);
      v27 = *(v0 + 6);
      v28 = *(v0 + 7);
      v29 = *(v0 + 9);
      Changes = CKSyncEngine.FetchChangesContext.description.getter();
      goto LABEL_19;
    case 0xALL:
      sub_1883FE32C();
      goto LABEL_18;
    case 0xBLL:
      sub_1883FE32C();
      v7 = v6 - 1;
LABEL_18:
      v30 = v7;
      Changes = CKSyncEngine.SendChangesContext.description.getter();
LABEL_19:
      MEMORY[0x18CFD5140](Changes);

      sub_1883F8358();
      return v30;
    case 0xCLL:
      sub_1883F8AD0();
      v17 = (v8 - 3);
      v10 = [v9 description];
      goto LABEL_14;
    case 0xDLL:
      sub_1883F8AD0();
      v17 = (v13 - 5);
      v10 = [v14 description];
LABEL_14:
      v15 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1883FF260();

      sub_1883FE78C();

      sub_1883FA058();
      result = v17;
      break;
    case 0xELL:
      sub_1884008F8();
      result = CKSyncEngine.Event.DidFetchAsset.description.getter();
      break;
    default:
      v18 = *(v0 + 1);
      result = CKSyncEngine.Event.StateUpdate.description.getter();
      break;
  }

  return result;
}

unint64_t CKSyncEngine.FetchChangesOptions.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 56);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1883F69F4(v3);
  if (v5)
  {
    sub_1884147E8();
    sub_1883F5A94();

    v21 = v17;
    v22 = v19;
  }

  if (v4)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  if (v4)
  {
    v7 = 0x313D6563726F6620;
  }

  else
  {
    v7 = 0;
  }

  sub_1884147E8();
  sub_1883FF004();
  v18 = v8;
  v20 = v9;
  v10 = [v3 operationGroupID];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x18CFD5140](v11, v13);

  MEMORY[0x18CFD5140](v18, v20);

  _StringGuts.grow(_:)(18);

  sub_1883F9424();
  CKSyncEngine.FetchChangesOptions.Scope.description.getter();
  MEMORY[0x18CFD5140](v14, v15);

  MEMORY[0x18CFD5140](v7, v6);

  MEMORY[0x18CFD5140](v21, v22);

  MEMORY[0x18CFD5140](15913, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

void CKSyncEngine.FetchChangesOptions.Scope.description.getter()
{
  sub_1883FDC24();
  v3 = *v0;
  if (!*(v0 + 8))
  {
    sub_1883FE8DC();

    v10 = sub_188405868();
    if (v10)
    {
      sub_1883FEE14(v10);
      if (v1 < 0)
      {
        goto LABEL_31;
      }

      sub_1883F855C();
      do
      {
        if (v2)
        {
          sub_1883FEC14();
        }

        else
        {
          v11 = sub_1883FB65C();
        }

        v12 = [v11 ckShortDescription];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1883F8038();

        sub_1883FDB94();
        if (v8)
        {
          sub_1883F9944(v13);
        }

        sub_1884055D8();
      }

      while (!v9);
    }

    sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
    sub_1883F94A4();
    sub_188403834();
    sub_18840231C();
    sub_18842D4F8();

    v14 = 41;
    v15 = 0xE100000000000000;
    goto LABEL_28;
  }

  if (*(v0 + 8) != 1)
  {
    goto LABEL_29;
  }

  v4 = sub_1883FDFA4();
  if (!v4)
  {
    goto LABEL_26;
  }

  sub_1883FEE14(v4);
  if ((v1 & 0x8000000000000000) == 0)
  {
    sub_1883F855C();
    do
    {
      if (v2)
      {
        sub_1883FEC14();
      }

      else
      {
        v5 = sub_1883FB65C();
      }

      v6 = [v5 ckShortDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1883F8038();

      sub_1883FDB94();
      if (v8)
      {
        sub_1883F9944(v7);
      }

      sub_1884055D8();
    }

    while (!v9);
LABEL_26:
    sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
    sub_1883F94A4();
    sub_188403834();
    sub_18840231C();
    sub_18842D4F8();

    v14 = 10537;
    v15 = 0xE200000000000000;
LABEL_28:
    MEMORY[0x18CFD5140](v14, v15);
LABEL_29:
    sub_1883FDC98();
    return;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1883FC684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v38 = v35[792];
  v35[647] = a29;
  v35[648] = a33;
  v35[649] = a30;
  v35[650] = a34;
  v35[651] = a25;
  v35[652] = a21;
  v35[653] = a17;
  v35[654] = a19;
  v35[655] = a28;
  v35[656] = a31;
  v35[657] = a35;
  v35[658] = *(v36 - 200);

  sub_1884C7AD8(v35 + 659);
}

uint64_t sub_1883FC71C()
{
}

NSArray sub_1883FC750()
{

  return Array._bridgeToObjectiveC()();
}

uint64_t sub_1883FC768(uint64_t a1)
{
  *(v1 + 40) = a1;

  return Identifiable<>.id.getter();
}

uint64_t sub_1883FC788(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1883FE340(a1, a2, va);
}

uint64_t sub_1883FC7AC(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_18850DE28();
}

void sub_1883FC7E4()
{

  JUMPOUT(0x18CFD7E80);
}

id sub_1883FC800()
{
  *(v1 + 480) = v0;
  v3 = *(v1 + 504);
  v4 = *(v1 + 368);

  return v0;
}

uint64_t sub_1883FC82C()
{
  sub_1883F7120();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = type metadata accessor for UUID();
  v1[14] = v4;
  v5 = *(v4 - 8);
  v1[15] = v5;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  v7 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v7);
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();
  v10 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1883FC918()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883F8674();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1883F7E38(v3);
  *v4 = v5;
  v4[1] = sub_1884061E0;
  sub_1883F97D4();
  sub_188404D5C();

  return sub_1883FADD0(v6, v7, v8, v9);
}

id sub_1883FC9B4()
{
  v1 = type metadata accessor for CancellationError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, v0, 0x50uLL);
  v6 = __dst[0];
  v7 = *(__dst + 1) | ((*(__dst + 5) | (HIBYTE(__dst[0]) << 16)) << 32);
  v8 = __dst[1];
  v9 = __dst[2];
  v10 = __dst[3];
  switch(__dst[8] >> 60)
  {
    case 1uLL:
      v90 = (LOBYTE(__dst[0]) | (v7 << 8));
      if (LOBYTE(__dst[2]))
      {
        if (LOBYTE(__dst[2]) == 1)
        {
          v91 = sub_188405334();
          sub_1884D1670(v91, v92, 1u);
          v93 = 0;
        }

        else
        {
          v136 = v90;
          v137 = v8;
          v93 = v8;
        }
      }

      else
      {
        v134 = sub_188405334();
        sub_1884D1670(v134, v135, 0);
        v93 = v90;
        v90 = 0;
      }

      sub_1883F4C5C(0, &qword_1EA90C5D8, off_1E70BA7E8);
      v138 = sub_188405334();
      sub_1884D1670(v138, v139, v9);
      v100 = sub_1885087DC(v90, v93);

      goto LABEL_78;
    case 2uLL:
      v56 = LOBYTE(__dst[0]) | (v7 << 8);
      v57 = *(v56 + 0x10);
      if (v57)
      {
        v156[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v58 = (v56 + 32);
        do
        {
          v59 = *v58++;
          [objc_allocWithZone(CKRecordZone) initWithZoneID_];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v60 = *(v156[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v57;
        }

        while (v57);
      }

      v61 = v8[2];
      if (v61)
      {
        v156[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v62 = (v8 + 5);
        do
        {
          v63 = *(v62 - 1);
          v64 = *v62;
          v62 += 16;
          [objc_allocWithZone(CKSyncEngineFetchedZoneDeletion) initWithZoneID:v63 reason:v64];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v65 = *(v156[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v61;
        }

        while (v61);
      }

      v66 = objc_allocWithZone(CKSyncEngineFetchedDatabaseChangesEvent);
      return sub_188509AC0();
    case 3uLL:
      v68 = LOBYTE(__dst[0]) | (v7 << 8);
      v69 = *(v68 + 0x10);
      if (v69)
      {
        v156[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v70 = (v68 + 32);
        do
        {
          v71 = *v70++;
          v72 = v71;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v73 = *(v156[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v69;
        }

        while (v69);
      }

      v74 = v8[2];
      if (v74)
      {
        v156[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v75 = v8 + 6;
        do
        {
          v77 = *(v75 - 2);
          v76 = *(v75 - 1);
          v78 = *v75;
          v75 += 3;
          v79 = objc_allocWithZone(CKSyncEngineFetchedRecordDeletion);
          v80 = v77;

          sub_188509B74(v80, v76, v78);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v81 = *(v156[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v74;
        }

        while (v74);
      }

      v82 = *(v9 + 16);
      if (v82)
      {
        v156[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v83 = (v9 + 32);
        do
        {
          v84 = *v83++;
          v85 = v84;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v86 = *(v156[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v82;
        }

        while (v82);
      }

      v87 = objc_allocWithZone(CKSyncEngineFetchedRecordZoneChangesEvent);
      return sub_188509BE0();
    case 4uLL:
      v148 = __dst[2];
      v152 = (LOBYTE(__dst[0]) | (v7 << 8));
      v153 = __dst[3];
      v22 = *(__dst[1] + 16);
      if (v22)
      {
        v156[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v23 = (v8 + 5);
        do
        {
          v24 = *(v23 - 1);
          v25 = *v23;
          v26 = objc_allocWithZone(CKSyncEngineFailedZoneSave);
          sub_188509E44(v24, v25, &selRef_initWithZone_error_);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v27 = *(v156[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v23 += 2;
          --v22;
        }

        while (v22);
      }

      sub_18844E6FC(&qword_1EA90E758, &unk_1886FCFA0);
      v28 = v153;
      v29 = static _DictionaryStorage.copy(original:)();
      v30 = 0;
      v32 = *(v28 + 64);
      v31 = v28 + 64;
      v33 = 1 << *(v31 - 32);
      sub_1883F90E0();
      i = v35 & v34;
      v38 = (v37 + 63) >> 6;
      v40 = v39 + 64;
      if ((v35 & v34) != 0)
      {
        goto LABEL_9;
      }

LABEL_10:
      v42 = v30;
      while (2)
      {
        v30 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v30 < v38)
        {
          v43 = *(v31 + 8 * v30);
          ++v42;
          if (v43)
          {
            v41 = __clz(__rbit64(v43));
            for (i = (v43 - 1) & v43; ; i &= i - 1)
            {
              v44 = v41 | (v30 << 6);
              v45 = *(*(v153 + 48) + 8 * v44);
              v46 = *(*(v153 + 56) + 8 * v44);
              *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
              *(v29[6] + 8 * v44) = v45;
              *(v29[7] + 8 * v44) = v46;
              v47 = v29[2];
              v48 = __OFADD__(v47, 1);
              v49 = v47 + 1;
              if (v48)
              {
                break;
              }

              v29[2] = v49;
              v50 = v45;
              v51 = v46;
              if (!i)
              {
                goto LABEL_10;
              }

LABEL_9:
              v41 = __clz(__rbit64(i));
            }

LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:

            v156[0] = 0;
            v156[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(38);
            MEMORY[0x18CFD5140](0xD000000000000024, 0x80000001886FFF10);
            swift_getErrorValue();
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            JUMPOUT(0x1883FD72CLL);
          }

          continue;
        }

        break;
      }

      sub_18847EE70(v29);

      v107 = objc_allocWithZone(CKSyncEngineSentDatabaseChangesEvent);
      result = sub_188509CD8();
      break;
    case 5uLL:
      v148 = __dst[2];
      v140[1] = LOBYTE(__dst[0]) | (v7 << 8);
      v94 = *(__dst[1] + 16);
      v146 = v5;
      v147 = v1;
      v153 = __dst[3];
      if (v94)
      {
        v156[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v95 = (v8 + 5);
        do
        {
          v96 = *(v95 - 1);
          v97 = *v95;
          v98 = objc_allocWithZone(CKSyncEngineFailedRecordSave);
          sub_188509E44(v96, v97, &selRef_initWithRecord_error_);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v99 = *(v156[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v95 += 2;
          --v94;
        }

        while (v94);
        v140[0] = v156[0];
        v10 = v153;
      }

      else
      {
        v140[0] = MEMORY[0x1E69E7CC0];
      }

      sub_18844E6FC(&qword_1EA90E750, &qword_1886FCF98);
      v108 = static _DictionaryStorage.copy(original:)();
      v109 = 0;
      v111 = v10 + 64;
      v110 = *(v10 + 64);
      v112 = 1 << *(v10 + 32);
      sub_1883F90E0();
      v114 = (v113 + 63) >> 6;
      sub_1883F9424();
      v144 = v116;
      v117 = *MEMORY[0x1E696A578];
      v142 = (v2 + 8);
      v143 = v117;
      v150 = v118 + 8;
      v141 = xmmword_1886F7400;
      v145 = v118;
      if (v115)
      {
        goto LABEL_60;
      }

      while (2)
      {
        v120 = v109;
LABEL_62:
        v109 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          goto LABEL_80;
        }

        if (v109 < v114)
        {
          v121 = *(v111 + 8 * v109);
          ++v120;
          if (v121)
          {
            v119 = __clz(__rbit64(v121));
            for (j = (v121 - 1) & v121; ; j = (v115 - 1) & v115)
            {
              v122 = v119 | (v109 << 6);
              v123 = *(*(v10 + 48) + 8 * v122);
              v156[0] = *(*(v10 + 56) + 8 * v122);
              v124 = v156[0];
              v152 = v123;
              sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
              type metadata accessor for CKError(0);
              if (swift_dynamicCast())
              {

                v125 = v154[0];
              }

              else
              {

                v156[0] = v124;
                v149 = v124;
                v126 = v146;
                v127 = v147;
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_83;
                }

                sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
                v128 = swift_allocObject();
                *(v128 + 16) = v141;
                *(v128 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                *(v128 + 40) = v129;
                *(v128 + 48) = 0xD000000000000012;
                *(v128 + 56) = v144;
                v130 = Dictionary.init(dictionaryLiteral:)();
                v155[0] = 20;
                sub_18847E984(v130);

                sub_18847A4EC();
                _BridgedStoredNSError.init(_:userInfo:)();

                v125 = v154[0];
                (*v142)(v126, v127);

                v108 = v145;
              }

              *(v150 + ((v122 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v122;
              v10 = v153;
              *(v108[6] + 8 * v122) = v152;
              *(v108[7] + 8 * v122) = v125;
              v131 = v108[2];
              v48 = __OFADD__(v131, 1);
              v132 = v131 + 1;
              if (v48)
              {
                goto LABEL_82;
              }

              v108[2] = v132;
              v115 = j;
              if (!j)
              {
                break;
              }

LABEL_60:
              v119 = __clz(__rbit64(v115));
            }

            continue;
          }

          goto LABEL_62;
        }

        break;
      }

      sub_18847F0E8(v108);

      v133 = objc_allocWithZone(CKSyncEngineSentRecordZoneChangesEvent);
      v106 = sub_188509EB4();
LABEL_74:
      v100 = v106;
LABEL_78:
      result = v100;
      break;
    case 6uLL:
      sub_18840B048();
      sub_188405020();
      sub_188403CCC(v156, v154);
      sub_188403D04();
      sub_1883FF7A0();
      sub_1883F7768(v154);
      v54 = [objc_allocWithZone(CKSyncEngineFetchChangesContext) initWithReason:v6 & 1 options:v155];
      sub_1883FBF6C(__dst);

      v55 = CKSyncEngineWillFetchChangesEvent;
      goto LABEL_51;
    case 7uLL:
      v52 = LOBYTE(__dst[0]) | (v7 << 8);
      v88 = objc_allocWithZone(CKSyncEngineWillFetchRecordZoneChangesEvent);
      v89 = sel_initWithZoneID_;
      goto LABEL_47;
    case 8uLL:
      v103 = (LOBYTE(__dst[0]) | (v7 << 8));
      v104 = objc_allocWithZone(CKSyncEngineDidFetchRecordZoneChangesEvent);
      v17 = v103;
      v105 = v8;
      v19 = &selRef_initWithZoneID_error_;
      goto LABEL_56;
    case 9uLL:
      sub_18840B048();
      sub_188405020();
      sub_18840E650(v156, v154);
      sub_188403D04();
      sub_1883FF7A0();
      sub_1883F7768(v154);
      v54 = [objc_allocWithZone(CKSyncEngineFetchChangesContext) initWithReason:v6 & 1 options:v155];
      sub_1883FBF6C(__dst);

      v55 = CKSyncEngineDidFetchChangesEvent;
LABEL_51:
      v100 = [objc_allocWithZone(v55) initWithContext_];

      goto LABEL_78;
    case 0xAuLL:
      sub_1883FA4DC();
      v101 = v10;
      v13 = sub_18841488C();

      v21 = CKSyncEngineWillSendChangesEvent;
      goto LABEL_53;
    case 0xBuLL:
      sub_1883FA4DC();
      v20 = v10;
      v13 = sub_18841488C();

      v21 = CKSyncEngineDidSendChangesEvent;
LABEL_53:
      v14 = [objc_allocWithZone(v21) initWithContext_];
      goto LABEL_54;
    case 0xCuLL:
      v52 = LOBYTE(__dst[0]) | (v7 << 8);
      v53 = CKSyncEngineWillFetchAssetEvent;
      goto LABEL_46;
    case 0xDuLL:
      v52 = LOBYTE(__dst[0]) | (v7 << 8);
      v53 = CKSyncEngineFetchedAssetEvent;
LABEL_46:
      v88 = objc_allocWithZone(v53);
      v89 = sel_initWithAsset_;
LABEL_47:

      return [v88 v89];
    case 0xEuLL:
      v15 = (LOBYTE(__dst[0]) | (v7 << 8));
      v16 = objc_allocWithZone(CKSyncEngineDidFetchAssetEvent);
      v17 = v15;
      v18 = v8;
      v19 = &selRef_initWithAsset_error_;
LABEL_56:
      v106 = sub_18850A020(v17, v8, v19);
      goto LABEL_74;
    default:
      sub_1883F4C5C(0, &unk_1EA90C698, off_1E70BA8E0);
      sub_188423C74(__dst[0], v8);
      v11 = sub_188405334();
      v13 = sub_188508764(v11, v12);
      v14 = [objc_allocWithZone(CKSyncEngineStateUpdateEvent) initWithStateSerialization_];
LABEL_54:
      v102 = v14;

      return v102;
  }

  return result;
}

void sub_1883FD784()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_1883FD7E8()
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_1883FD800()
{
  sub_188405F00();
  type metadata accessor for UUID();
  sub_188488A64(&unk_1EA90C868, MEMORY[0x1E69695A8]);
  sub_1883F7BC0();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1883FE2BC();
  sub_18848671C();
}

uint64_t sub_1883FD92C(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int128 a32, char a33)
{
  *v33 = a1;
  *(v33 + 16) = a2;
  *(v33 + 32) = a32;
  *(v33 + 48) = a33;

  return _HashTable.BucketIterator.currentValue.getter();
}

uint64_t sub_1883FD964(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 176) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *v4;
  return sub_188405594(sub_1884059B4);
}

void sub_1883FDA08()
{
  v4 = (v1 << 9) | (8 * __clz(__rbit64(v2)));
  v5 = *(*(v0 + 48) + v4);
  v6 = *(*(v0 + 56) + v4);

  type metadata accessor for CKError(0);
}

uint64_t sub_1883FDA5C()
{

  return swift_allocObject();
}

void sub_1883FDA90()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FDAD8(uint64_t result)
{
  *(v2 - 296) = v1;
  *(v2 - 288) = result;
  return result;
}

uint64_t sub_1883FDAEC()
{

  return sub_1883F5BA0(v0);
}

uint64_t sub_1883FDB04(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1883FDB48()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_1883FDB58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_1883FDB78()
{

  JUMPOUT(0x18CFD5140);
}

id sub_1883FDBA8()
{

  return sub_1884276B8(v1, v0);
}

uint64_t sub_1883FDBE0(uint64_t a1)
{
  *(v1 + 160) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void sub_1883FDC6C()
{
  v2 = v0[50];
  v1 = v0[51];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[35];
}

void sub_1883FDCE0(uint64_t a1@<X8>)
{
  v3 = *(v2 + 1304);
  *(v2 + 1648) = *(v1 + 8 * a1 + 32);
  v4 = *(v3 + 216);
}

uint64_t sub_1883FDD1C(uint64_t result)
{
  *(v1 + 120) = result;
  v2 = *(v1 + 104);
  return result;
}

uint64_t sub_1883FDD2C()
{

  return swift_task_alloc();
}

uint64_t sub_1883FDD90(uint64_t result)
{
  *(v3 + 8) = v1;
  v5 = *(v2 + 56);
  *(v4 + 16) = 166;
  *(v4 + 24) = result;
  return result;
}

void sub_1883FDDB4()
{
  v1 = v0[200];
  v2 = v0[198];
  v11 = v0[199];
  v12 = v0[197];
  v3 = v0[196];
  v9 = v0[193];
  v4 = v0[191];
  v5 = v0[181];
  v6 = v0[171];
  v7 = v0[170];
  v8 = v0[169];
  v10 = v0[168];
}

uint64_t sub_1883FDDF4()
{

  return swift_slowAlloc();
}

uint64_t sub_1883FDE10()
{
}

uint64_t sub_1883FDE5C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1883FDEA0()
{
  v2 = *(v0 - 1);
  v1 = *v0;
  v4 = *(v0 - 3);
  v3 = *(v0 - 2);
}

BOOL sub_1883FDEB0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_188404AE8(va, a1);
}

void *sub_1883FDED8(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x50uLL);
}

uint64_t sub_1883FDF08()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

__n128 sub_1883FDF34(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v10 + 104) = a1;
  result = a9;
  a1[1] = a9;
  a1[2].n128_u64[0] = v9;
  return result;
}

uint64_t sub_1883FDF4C()
{
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
}

void sub_1883FDF6C()
{
  v1 = v0[95];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
}

void sub_1883FDF80(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t sub_1883FDFA4()
{

  return sub_1883F4C9C(v0);
}

id sub_1883FDFD0()
{

  return sub_1884296E8(v1, v0);
}

void *sub_1883FE004(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = a4 & 1;

  return sub_1884881D0(va, a2, a3, v9, a5);
}

uint64_t sub_1883FE028()
{

  return String.init<A>(_:)();
}

void sub_1883FE048()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FE060()
{

  return sub_1884D123C(v3, v1, v0, v2);
}

uint64_t sub_1883FE084(uint64_t a1)
{
  *(a1 + 8) = sub_1884D9DE8;
  v2 = *(v1 + 1304);
  return v1 + 672;
}

void sub_1883FE0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = v35[291];
  v50 = v35[293];
  v51 = v35[292];
  v48 = v35[295];
  v49 = v35[294];
  v38 = v35[297];
  v46 = v35[298];
  v47 = v35[296];
  v39 = v35[299];
  v40 = v35[300];
  v41 = v35[301];
  v42 = v35[302];
  v43 = v35[303];
  v44 = v35[304];
  v45 = v35[305];
  v35[271] = *(v36 - 192);
  v35[272] = a23;
  v35[273] = a32;
  v35[274] = a29;
  v35[275] = a33;
  v35[276] = a30;
  v35[277] = a34;
  v35[278] = a25;
  v35[279] = a21;
  v35[280] = a17;
  v35[281] = a19;
  v35[282] = a28;
  v35[283] = a31;
  v35[284] = a35;
  v35[285] = *(v36 - 200);
}

uint64_t sub_1883FE190()
{

  return CheckedContinuation.init(continuation:function:)();
}

__n128 sub_1883FE1F0@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *a1 = *a3;
  v4 = *(a3 + 15);
  return result;
}

uint64_t sub_1883FE248()
{
  v2 = *(v0 + 2264);

  return swift_slowAlloc();
}

uint64_t sub_1883FE2DC()
{

  return sub_1884A11FC(v1, v0);
}

uint64_t sub_1883FE2FC()
{
}

uint64_t sub_1883FE340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1884058A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_188405DF8(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1883FE944(v11);
  return v7;
}

uint64_t sub_1883FE404()
{
  v2 = v0[248];
  v3 = v0[235];
  v4 = v0[234];

  return swift_willThrow();
}

void *sub_1883FE424(void *a1)
{

  return memcpy(a1, (v1 + 2488), 0x78uLL);
}

uint64_t sub_1883FE43C()
{
  v1 = v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_loggingIDMutex;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_loggingIDMutex));
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v1);
  _StringGuts.grow(_:)(17);

  strcpy(v5, "<CKSyncEngine ");
  MEMORY[0x18CFD5140](v2, v3);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return v5[0];
}

id sub_1883FE500(void *a1)
{
  v3 = *(v1 + 1856);

  return a1;
}

void *sub_1883FE518()
{
  v2[247] = v1;
  v2[248] = v0;

  return memcpy(v2 + 249, v2 + v3, 0x50uLL);
}

uint64_t sub_1883FE540()
{

  return swift_slowAlloc();
}

uint64_t sub_1883FE5A0()
{

  return swift_beginAccess();
}

void sub_1883FE5B8(unint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  *(v5 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  *(v4[6] + 8 * a1) = v3;
  *(v4[7] + 8 * a1) = a3;
  ++v4[2];
}

uint64_t sub_1883FE6B8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 536);
  return result;
}

uint64_t sub_1883FE6E4(uint64_t a1)
{
  *(a1 + 8) = sub_1884E1734;
  v2 = *(v1 + 24);
  return *(v1 + 32);
}

uint64_t sub_1883FE710()
{

  return swift_asyncLet_begin();
}

void *sub_1883FE764(void *a1)
{

  return memcpy(a1, v1, 0x60uLL);
}

__n128 sub_1883FE77C@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  v3 = *(v1 + 15);
  return result;
}

void sub_1883FE78C()
{

  JUMPOUT(0x18CFD5140);
}

void sub_1883FE7A8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1883FE7C8()
{

  return specialized ContiguousArray.reserveCapacity(_:)();
}

void sub_1883FE7E8(unint64_t a1@<X8>)
{
  *(v3 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  *(*(v2 + 48) + 8 * a1) = v1;
  v4 = *(v2 + 56);
}

uint64_t sub_1883FE828()
{

  return String.hash(into:)();
}

uint64_t sub_1883FE844()
{

  return swift_beginAccess();
}

void sub_1883FE89C()
{

  _StringGuts.grow(_:)(65);
}

void sub_1883FE8BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1883FE8DC()
{

  _StringGuts.grow(_:)(16);
}

uint64_t sub_1883FE8FC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1883FE944(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1883FE990(uint64_t result)
{
  *(v2 + 72) = result;
  v3 = v1 + *v1;
  return result;
}

void sub_1883FE9F0()
{
  v4 = (v2 << 9) | (8 * __clz(__rbit64(v1)));
  v5 = *(v0 + 56);
  v6 = *(*(v0 + 48) + v4);
  v7 = *(v5 + v4);

  type metadata accessor for CKError(0);
}

uint64_t sub_1883FEA20()
{
  v8 = *v1;
  *(v8 + 16) = v2 + 1;
  v9 = (v8 + 32 * v2);
  v9[4] = v5;
  v9[5] = v4;
  v9[6] = v3;
  v9[7] = v0;
  v10 = *(v6 - 128);
}

void sub_1883FEA58()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FEA90(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_1883FEAB4()
{

  return swift_once();
}

void sub_1883FEAE8()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FEB04()
{

  return specialized ContiguousArray.reserveCapacity(_:)();
}

uint64_t sub_1883FEB4C()
{
}

uint64_t sub_1883FEB6C()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1883FEBAC()
{
  v7 = vextq_s8(*(v0 + 6464), *(v0 + 6464), 8uLL);
  v8 = vextq_s8(*(v0 + 6480), *(v0 + 6480), 8uLL);
  v5 = *(v0 + 6400);
  v6 = vextq_s8(*(v0 + 6448), *(v0 + 6448), 8uLL);
  v3 = *(v0 + 6416);
  v4 = vextq_s8(*(v0 + 6432), *(v0 + 6432), 8uLL);

  return sub_1884F3A24(v0 + 3568, v0 + 3688);
}

void sub_1883FEC14()
{

  JUMPOUT(0x18CFD59D0);
}

id sub_1883FEC38(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

void sub_1883FEC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a10 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
  *(v11[6] + 8 * v10) = v13;
  *(v11[7] + 8 * v10) = v12;
  v14 = v11[2];
}

uint64_t sub_1883FECC4()
{
}

uint64_t sub_1883FECF4()
{

  return swift_dynamicCast();
}

BOOL sub_1883FED2C()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_1883FED5C()
{

  return swift_asyncLet_begin();
}

uint64_t sub_1883FED98(uint64_t a1)
{
  *(a1 + 8) = sub_1884FDD84;
  v3 = *(v2 + 912);
  return v1;
}

uint64_t sub_1883FEDF4()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

char *sub_1883FEE14(uint64_t a1)
{

  return sub_18840489C(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_1883FEE7C(uint64_t result)
{
  v2[207] = result;
  v2[84] = v1;
  v2[85] = result;
  v2[90] = 0;
  v2[92] = 0x8000000000000000;
  return result;
}

void *sub_1883FEE9C()
{

  return memcpy((v0 + 16), (v0 + 96), 0x50uLL);
}

uint64_t sub_1883FEEC8()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1883FEEE0()
{

  return swift_slowAlloc();
}

uint64_t sub_1883FEF14()
{
  *(v1 + 120) = v0;

  return swift_task_alloc();
}

uint64_t sub_1883FEF2C()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

uint64_t sub_1883FF014()
{
}

void sub_1883FF02C()
{

  sub_1884DF66C(0, 1, v0, v1);
}

uint64_t sub_1883FF074@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v4 = (v2 + a1);
  v5 = *v4;
  v6 = v4[1];

  return sub_1883FE340(v5, v6, &a2);
}

void sub_1883FF0E0()
{
  v1 = 1 << *(v0 + 32);
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(v0 + 64);
}

uint64_t sub_1883FF120()
{
  result = v0;
  v3 = *(v1 - 128);
  v4 = *(v1 - 144);
  return result;
}

uint64_t sub_1883FF15C()
{

  return swift_getObjectType();
}

void *sub_1883FF1E0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = v1 + 32;

  return memmove(v3, (v3 + 8), 8 * (a1 - 1));
}

id sub_1883FF204(uint64_t a1)
{
  *(v1 + 6520) = a1;
  *(a1 + 16) = &unk_1886FB6F0;
  *(a1 + 24) = v3;

  return v2;
}

uint64_t sub_1883FF240()
{
}

void sub_1883FF26C()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t sub_1883FF288(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = (-1 << v3) & ~*(v2 + 8 * (v3 >> 6));
  return result;
}

int8x16_t sub_1883FF2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int8x16_t a15, __int128 a16, int8x16_t a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v26 - 192) = *(v25 + 2488);
  v27 = *(v25 + 2496);
  v28 = *(v25 + 2512);
  v37 = *(v25 + 2504);
  v38 = *(v25 + 2520);
  v29 = *(v25 + 2528);
  v30 = *(v25 + 2544);
  v31 = *(v25 + 2552);
  v32 = *(v25 + 2560);
  v33 = *(v25 + 2568);
  v34 = *(v25 + 2576);
  v35 = *(v25 + 2584);
  v39 = *(v25 + 2536);
  v40 = *(v25 + 2592);
  *(v26 - 200) = *(v25 + 2600);
  *(v25 + 3344) = a19;
  *(v25 + 3328) = a20;
  *(v25 + 3376) = a16;
  *(v25 + 3360) = a18;
  result = vextq_s8(a15, a15, 8uLL);
  *(v25 + 3408) = vextq_s8(a17, a17, 8uLL);
  *(v25 + 3392) = result;
  *(v25 + 3424) = a25;
  *(v25 + 3432) = a24;
  *(v25 + 3440) = a23;
  return result;
}

uint64_t sub_1883FF3C8(uint64_t a1)
{
  *(v1 + 1424) = a1;
  v3 = *(v1 + 1304);

  return swift_beginAccess();
}

uint64_t sub_1883FF3F4()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1883FF44C(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int128 a34, char a35)
{
  *v35 = a1;
  *(v35 + 16) = a2;
  *(v35 + 32) = a34;
  *(v35 + 48) = a35;

  return _HashTable.BucketIterator.currentValue.getter();
}

void sub_1883FF49C()
{
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
}

void *sub_1883FF504(void *a1)
{

  return memcpy(a1, (v1 + 24), 0x48uLL);
}

void sub_1883FF51C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{

  sub_18850DE48(a1, a2, v4, a4);
}

uint64_t sub_1883FF534(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 64);
  return v2 + 176;
}

uint64_t sub_1883FF548()
{

  return Dictionary.init(dictionaryLiteral:)();
}

void sub_1883FF564(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 & 1;

  sub_1884613D8(a1, v7, a3, a4, a5, a6, sub_188461468);
}

uint64_t sub_1883FF58C()
{

  return swift_allocObject();
}

uint64_t sub_1883FF5A4()
{
}

void sub_1883FF5E4()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FF604(uint64_t result)
{
  *(v2 + 120) = result;
  *(result + 16) = v4;
  *(result + 24) = v1;
  *(result + 32) = v3;
  return result;
}

id sub_1883FF634()
{
  v3 = *(v0 - 1);
  v4 = *v0;
  v5 = *(v1 + 2192);

  return objc_allocWithZone(v5);
}

uint64_t sub_1883FF688(uint64_t **a1)
{
  v2 = **a1;
  v3 = *(*a1 + 8);
  v4 = (*a1)[2];
}

id sub_1883FF6AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *v18 = a17;
  *(v18 + 4) = v17;
  *a1 = v17;

  return v17;
}

id sub_1883FF6D0()
{

  return [v0 (v1 + 3376)];
}

uint64_t sub_1883FF744()
{
}

uint64_t sub_1883FF75C(uint64_t a1)
{
  *(a1 + 8) = sub_1884D957C;
  v2 = *(v1 + 1304);
  return v1 + 992;
}

void *sub_1883FF7A0()
{

  return memcpy((v0 + 160), (v0 + 240), 0x48uLL);
}

id sub_1883FF7CC(void *a1)
{
  v123 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_domain(v1, v2, v3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain");

  if (isEqualToString)
  {
    v9 = objc_msgSend_userInfo(v1, v7, v8);
    v12 = objc_msgSend_mutableCopy(v9, v10, v11);

    v15 = objc_msgSend_CKClientSuitableUnderlyingError(v1, v13, v14);
    v16 = *MEMORY[0x1E696AA08];
    objc_msgSend_setObject_forKeyedSubscript_(v12, v17, v15, *MEMORY[0x1E696AA08]);
    v20 = objc_msgSend_userInfo(v15, v18, v19);
    v21 = *MEMORY[0x1E696A578];
    v23 = objc_msgSend_objectForKeyedSubscript_(v20, v22, *MEMORY[0x1E696A578]);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v24, v23, v21);

    v27 = objc_msgSend_userInfo(v15, v25, v26);
    v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"CKErrorDescription");
    objc_msgSend_setObject_forKeyedSubscript_(v12, v30, v29, @"CKErrorDescription");

    v31 = MEMORY[0x1E696AEC0];
    v34 = objc_msgSend_domain(v15, v32, v33);
    v37 = objc_msgSend_code(v15, v35, v36);
    v39 = objc_msgSend_stringWithFormat_(v31, v38, @"%@: %ld", v34, v37);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v40, v39, *MEMORY[0x1E695E618]);

    v45 = objc_msgSend_CKClientSuitableErrorSpecificUserInfo(v15, v41, v42);
    if (v45)
    {
      objc_msgSend_addEntriesFromDictionary_(v12, v43, v45);
    }

    v46 = objc_msgSend_userInfo(v1, v43, v44);
    v48 = objc_msgSend_objectForKeyedSubscript_(v46, v47, @"CKPartialErrors");

    *&buf = 0;
    *(&buf + 1) = &buf;
    v119 = 0x3032000000;
    v120 = sub_1883ED890;
    v121 = sub_1883EF59C;
    v122 = 0;
    v108 = 0;
    v109 = &v108;
    v110 = 0x3032000000;
    v111 = sub_1883ED890;
    v112 = sub_1883EF59C;
    v113 = 0;
    if (v48)
    {
      v50 = objc_opt_new();
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = sub_188564230;
      v104[3] = &unk_1E70BDA20;
      p_buf = &buf;
      v107 = &v108;
      v51 = v50;
      v105 = v51;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v48, v52, v104);
      objc_msgSend_setObject_forKeyedSubscript_(v12, v53, v51, @"CKPartialErrors");

      v54 = *(*(&buf + 1) + 40);
      if (v54)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v12, v49, v54, @"RequestUUID");
      }
    }

    v55 = v109[5];
    if (v55)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v12, v49, v55, @"ContainerID");
    }

    v56 = objc_msgSend_objectForKeyedSubscript_(v12, v49, v16);
    v59 = objc_msgSend_code(v56, v57, v58);
    v62 = CKErrorCodeForUnderlyingErrorCode(v59, v60, v61);

    v63 = [CKPrettyError alloc];
    v65 = objc_msgSend_initWithDomain_code_userInfo_(v63, v64, @"CKErrorDomain", v62, v12);

    _Block_object_dispose(&v108, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v68 = objc_msgSend_domain(v1, v7, v8);
    v70 = objc_msgSend_isEqualToString_(v68, v69, *MEMORY[0x1E696A978]);

    if (v70)
    {
      v73 = objc_msgSend_code(v1, v71, v72);
      v74 = CKErrorCodeForNSURLErrorCode(v73);
      v75 = objc_opt_new();
      v76 = MEMORY[0x1E696AEC0];
      v79 = objc_msgSend_domain(v1, v77, v78);
      v82 = objc_msgSend_code(v1, v80, v81);
      v84 = objc_msgSend_stringWithFormat_(v76, v83, @"%@: %ld", v79, v82);
      objc_msgSend_setObject_forKeyedSubscript_(v75, v85, v84, *MEMORY[0x1E695E618]);

      objc_msgSend_setObject_forKeyedSubscript_(v75, v86, v1, *MEMORY[0x1E696AA08]);
      v87 = [CKPrettyError alloc];
      v65 = objc_msgSend_initWithDomain_code_userInfo_(v87, v88, @"CKErrorDomain", v74, v75);
    }

    else
    {
      v65 = v1;
      if (objc_msgSend_CKIsXPCConnectionError(v1, v71, v72))
      {
        v89 = *MEMORY[0x1E696A578];
        v116[0] = *MEMORY[0x1E696AA08];
        v116[1] = v89;
        v117[0] = v1;
        v117[1] = @"Error connecting to CloudKit daemon. This could happen for many reasons, for example a daemon exit, a device reboot, a race with the connection inactivity monitor, invalid entitlements, and more. Check the logs around this time to investigate the cause of this error.";
        v116[2] = @"CKErrorDescription";
        v116[3] = @"CKRetryAfter";
        v117[2] = @"Error connecting to CloudKit daemon. This could happen for many reasons, for example a daemon exit, a device reboot, a race with the connection inactivity monitor, invalid entitlements, and more. Check the logs around this time to investigate the cause of this error.";
        v117[3] = &unk_1EFA850B0;
        v90 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v66, v117, v116, 4);
        v91 = [CKPrettyError alloc];
        v65 = objc_msgSend_initWithDomain_code_userInfo_(v91, v92, @"CKErrorDomain", 6, v90);
      }
    }
  }

  v93 = objc_msgSend_domain(v65, v66, v67);
  isEqual = objc_msgSend_isEqual_(v93, v94, @"CKErrorDomain");

  if ((isEqual & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v96 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v1;
      _os_log_fault_impl(&dword_1883EA000, v96, OS_LOG_TYPE_FAULT, "Could not convert error to a proper CloudKit error. Defaulting to internal error for %@", &buf, 0xCu);
    }

    v114 = *MEMORY[0x1E696AA08];
    v115 = v1;
    v98 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v97, &v115, &v114, 1);
    v99 = [CKPrettyError alloc];
    v101 = objc_msgSend_initWithDomain_code_userInfo_(v99, v100, @"CKErrorDomain", 1, v98);

    v65 = v101;
  }

  v102 = *MEMORY[0x1E69E9840];

  return v65;
}

void sub_1883FFE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1883FFE8C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x1E696A250]);

  return isEqualToString && ((objc_msgSend_code(a1, v7, v8) - 4097) & 0xFFFFFFFFFFFFFFFDLL) == 0;
}

id CKExtendedMethodSignatureForProtocolSelector(void *a1, uint64_t a2)
{
  v3 = a1;
  MethodTypeEncoding = _protocol_getMethodTypeEncoding();
  if (!MethodTypeEncoding || (objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v5, MethodTypeEncoding), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    outCount = 0;
    v7 = protocol_copyProtocolList(v3, &outCount);
    v8 = v7;
    if (outCount)
    {
      v9 = 1;
      v10 = v7;
      do
      {
        v11 = *v10++;
        v12 = CKExtendedMethodSignatureForProtocolSelector(v11, a2);
      }

      while (v9++ < outCount && v12 == 0);
      v15 = v12;
    }

    else
    {
      v15 = 0;
      v6 = 0;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    free(v8);
    v6 = v15;
  }

LABEL_12:

  return v6;
}

uint64_t sub_188400120(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 8) == 1)
    {
      *(result + 8) = 0;
    }

    result = *(result + 32);
    if (result)
    {
      v2 = sqlite3_step(result);
      if (v2 == 100)
      {
        return 1;
      }

      else
      {
        if (v2 != 101)
        {
          objc_msgSend_invalidate_(v1, v3, @"Failed to step (%d): %@", v2, v1[3]);
        }

        return 0;
      }
    }
  }

  return result;
}

id CKGetRealPath(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = v1;
  if (v1)
  {
    v5 = &stru_1EFA32970;
    v6 = v1;
    while (1)
    {
      if (!objc_msgSend_length(v6, v2, v3))
      {
        v17 = v5;
        goto LABEL_10;
      }

      v9 = objc_msgSend_fileSystemRepresentation(v6, v7, v8);
      v10 = realpath_DARWIN_EXTSN(v9, 0);
      if (v10)
      {
        v22 = v10;
        v23 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v11, v12);
        v24 = strlen(v22);
        v26 = objc_msgSend_stringWithFileSystemRepresentation_length_(v23, v25, v22, v24);

        v28 = objc_msgSend_stringByAppendingPathComponent_(v26, v27, v5);

        free(v22);
        v29 = v28;
        v6 = v29;
        goto LABEL_17;
      }

      if (*__error() != 2)
      {
        break;
      }

      v15 = objc_msgSend_lastPathComponent(v6, v13, v14);
      v17 = objc_msgSend_stringByAppendingPathComponent_(v15, v16, v5);

      v20 = objc_msgSend_stringByDeletingLastPathComponent(v6, v18, v19);

      v5 = v17;
      v6 = v20;
      if (!v20)
      {
        goto LABEL_10;
      }
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v30 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v33 = v30;
      v34 = *__error();
      v35 = 138543618;
      v36 = v6;
      v37 = 1024;
      v38 = v34;
      _os_log_error_impl(&dword_1883EA000, v33, OS_LOG_TYPE_ERROR, "realpath failed at %{public}@: %{errno}d", &v35, 0x12u);
    }

    v29 = v4;
LABEL_17:
    v21 = v29;
  }

  else
  {
    v6 = 0;
    v17 = &stru_1EFA32970;
LABEL_10:
    v21 = v4;
    v5 = v17;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v21;
}

id sub_1884003F8(void *a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  LODWORD(v17) = 0;
  v2 = objc_msgSend_dataUsingEncoding_(a1, a2, 4, 0, 0, v17, v18);
  v5 = objc_msgSend_bytes(v2, v3, v4);
  v8 = objc_msgSend_length(v2, v6, v7);
  CC_SHA1(v5, v8, &v16);
  v10 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v9, &v16, 20, 0);
  v13 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v10, v11, v12);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id sub_1884004E4(void *a1)
{
  v14 = 0;
  v2 = a1;
  v5 = objc_msgSend_bytes(v2, v3, v4);
  v8 = objc_msgSend_length(a1, v6, v7);
  v9 = CKHexCharFromBytes(v5, v8, &v14, 3);
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v10, v11, v9, v14, 1, 1);

  return v12;
}

id CKProcessStartDate()
{
  v10 = *MEMORY[0x1E69E9840];
  *v7 = 0xE00000001;
  v8 = 1;
  v9 = getpid();
  memset(v6, 0, 512);
  v5 = 648;
  sysctl(v7, 4u, v6, &v5, 0, 0);
  v2 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], v0, v1, SDWORD2(v6[0]) / 1000000.0 + *&v6[0]);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id sub_188400684(void *a1, const char *a2)
{
  v3 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"\\/:%");
  v6 = objc_msgSend_invertedSet(v3, v4, v5);

  v8 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(a1, v7, v6);

  return v8;
}

void sub_1884007D8(void *a1@<X8>)
{
  a1[5] = v1;
  a1[6] = v2;
  a1[7] = v4;
  a1[8] = v3;
}

uint64_t sub_188400810()
{

  return swift_willThrow();
}

uint64_t sub_188400828()
{

  return type metadata accessor for UUID();
}

uint64_t sub_188400858()
{

  return String.init<A>(describing:)();
}

uint64_t sub_188400870()
{
  v2 = v0[5];
  v0[18] = v2;
  v0[6] = v2;

  return swift_task_alloc();
}

uint64_t sub_1884008B4()
{
  v2 = v0[95];
  v3 = v0[93];
  v4 = v0[92];
  v5 = v0[91];
}

uint64_t sub_188400914()
{

  return swift_dynamicCast();
}

uint64_t sub_188400938(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400948(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400978(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400998(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400B28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400B38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_188400B68(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_188400BAC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1883F9598();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188400BF0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_188400C40(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 8) == 1)
    {
      v39 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v39, v40, sel_columnCount, a1, @"CKSQLiteStatement.m", 281, @"Statement is reset: %@", *(a1 + 24));
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = sqlite3_column_count(v4);
      objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v6, v5);
    }

    else
    {
      v5 = 0;
      objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], a2, 0);
    }
    v9 = ;
    if (v5)
    {
      v10 = 0;
      v11 = *MEMORY[0x1E695D920];
      while (1)
      {
        if (*(a1 + 8) == 1)
        {
          v33 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, sel_columnNameAtIndex_, a1, @"CKSQLiteStatement.m", 287, @"Statement is reset: %@", *(a1 + 24));
        }

        v12 = *(a1 + 32);
        if (v12)
        {
          break;
        }

        v21 = 0;
        v16 = 0;
LABEL_45:

        if (v5 == ++v10)
        {
          goto LABEL_48;
        }
      }

      v13 = MEMORY[0x1E696AEC0];
      v14 = sqlite3_column_name(v12, v10);
      v16 = objc_msgSend_stringWithUTF8String_(v13, v15, v14);
      v17 = *(a1 + 32);
      if (v17)
      {
        v18 = sqlite3_column_type(v17, v10);
        if (v18 <= 2)
        {
          if (v18 == 1)
          {
            v29 = MEMORY[0x1E696AD98];
            if (*(a1 + 8) == 1)
            {
              v42 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v19, v20);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v37, sel_int64AtIndex_, a1, @"CKSQLiteStatement.m", 299, @"Statement is reset: %@", *(a1 + 24));
            }

            v30 = *(a1 + 32);
            if (v30)
            {
              v31 = sqlite3_column_int64(v30, v10);
              objc_msgSend_numberWithLongLong_(v29, v32, v31);
            }

            else
            {
              objc_msgSend_numberWithLongLong_(v29, v19, 0);
            }
            v25 = ;
            goto LABEL_42;
          }

          if (v18 == 2)
          {
            v22 = MEMORY[0x1E696AD98];
            if (*(a1 + 8) == 1)
            {
              v43 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v19, v20);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v43, v38, sel_doubleAtIndex_, a1, @"CKSQLiteStatement.m", 305, @"Statement is reset: %@", *(a1 + 24));
            }

            v23 = *(a1 + 32);
            if (v23)
            {
              v24 = sqlite3_column_double(v23, v10);
            }

            else
            {
              v24 = 0.0;
            }

            v25 = objc_msgSend_numberWithDouble_(v22, v19, v20, v24);
LABEL_42:
            v21 = v25;
            goto LABEL_43;
          }
        }

        else
        {
          switch(v18)
          {
            case 3:
              v25 = sub_188680A00(a1, v10, v20);
              goto LABEL_42;
            case 4:
              if (*(a1 + 8) == 1)
              {
                v35 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v19, v20);
                objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, sel_blobAtIndex_, a1, @"CKSQLiteStatement.m", 311, @"Statement is reset: %@", *(a1 + 24));
              }

              v26 = *(a1 + 32);
              if (v26)
              {
                v21 = sqlite3_column_blob(v26, v10);
                if (v21)
                {
                  v27 = sqlite3_column_bytes(*(a1 + 32), v10);
                  v25 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v28, v21, v27);
                  goto LABEL_42;
                }
              }

              else
              {
                v21 = 0;
              }

LABEL_43:
              if (v21)
              {
                objc_msgSend_setObject_forKeyedSubscript_(v9, v19, v21, v16);
              }

              goto LABEL_45;
            case 5:
              goto LABEL_36;
          }
        }

        objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v19, v11, @"Unexpected column type: %d", v18);
      }

LABEL_36:
      v21 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_48:

  return v9;
}

void sub_18840103C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = sqlite3_finalize(v2);
      if (v3)
      {
        v4 = v3;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v5 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
        {
          v7 = *(a1 + 24);
          v8[0] = 67109378;
          v8[1] = v4;
          v9 = 2112;
          v10 = v7;
          _os_log_fault_impl(&dword_1883EA000, v5, OS_LOG_TYPE_FAULT, "Error %d finalizing prepared statement: %@", v8, 0x12u);
        }
      }

      *(a1 + 32) = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id sub_188401148(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_length(a1, a2, a3))
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_188401184(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_msgSend_valueForEntitlement_(a1, a2, @"aps-connection-initiate");
  v3 = v2 != 0;

  return v3;
}

uint64_t sub_1884020F4()
{
  sub_1883FB4AC();
  sub_1884CDCE4();
  v1 = sub_1884021B4();
  v0[12] = v1;
  v3 = sub_1884038A4(v1, v2);
  sub_1883FDF34(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  swift_task_alloc();
  sub_1883FF2B8();
  v0[14] = v12;
  *v12 = v13;
  v12[1] = sub_188407510;
  v14 = v0[8];
  sub_1884110E4();

  return sub_1883FD964(v15, v16, v17, v18);
}

uint64_t sub_1884021B4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getObjectType();
    result = sub_1884049C0(v1);
    if (!result)
    {
      _StringGuts.grow(_:)(62);
      sub_1883FEB90();
      MEMORY[0x18CFD5140](0xD00000000000003CLL);
      swift_getObjectType();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      result = sub_188410C3C();
      __break(1u);
    }
  }

  return result;
}

__n128 sub_1884022A8(__n128 *a1)
{
  *(v1 + 152) = a1;
  result = *(v1 + 56);
  a1[1] = result;
  return result;
}

uint64_t sub_1884022C8()
{

  return swift_arrayDestroy();
}

void sub_1884022E4()
{
  v3 = v0[302];
  v4 = v0[301];
  v2 = v0[303];
  v1 = v0[304];
}

uint64_t sub_18840231C()
{
}

uint64_t sub_18840233C()
{
  sub_1883F7120();
  v1 = *(v0 + 80);
  sub_18840506C();
  sub_1883F816C();

  return v2();
}

uint64_t sub_18840239C()
{
  sub_1883F7120();
  v1 = *(v0 + 424);

  sub_1883F816C();

  return v2();
}

void sub_1884023F4()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v4 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v5 = sub_1883F7B50(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v60 - v8;
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 56);
  if (sub_188403050() & 1) == 0 || (v12)
  {
    goto LABEL_42;
  }

  if (v11 == 1 && !sub_1883F4C9C(v10))
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v39 = type metadata accessor for Logger();
    sub_1883F85F4(v39, qword_1EA90C9F8);

    v15 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1884F46D0();
    if (!sub_188430A60())
    {
      goto LABEL_11;
    }

    sub_1883F9984();
    v40 = sub_1883F8C00();
    sub_1884F4550(v40);
    v41 = sub_1884F46B8(4.8149e-34);
    sub_1884F45D4(v41, v42);
    sub_1883FEFE0();

    *(v10 + 4) = 1;
    goto LABEL_34;
  }

  v13 = *(v1 + 128);
  if ([*(v13 + 16) needsToFetchDatabaseChanges])
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v14 = type metadata accessor for Logger();
    sub_1883F85F4(v14, qword_1EA90C9F8);

    v15 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1884F46D0();
    if (!sub_188430A60())
    {
      goto LABEL_11;
    }

    sub_1883F9984();
    v16 = sub_1883F8C00();
    sub_1884F4550(v16);
    v17 = sub_1884F46B8(4.8149e-34);
    sub_1884F45D4(v17, v18);
    sub_1883FEFE0();

    *(v10 + 4) = 1;
    goto LABEL_10;
  }

  if (!sub_188427168())
  {
    v34 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
    sub_1883F4C9C(v34);
    sub_1884F481C();

    if (v4)
    {
      if (v11 == 1)
      {
        v35 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
        v34 = sub_1884043A8(v35);
        sub_188426CE0(v10, v34);
        v37 = v36;

        if (v37)
        {
          if (qword_1EA90C9F0 != -1)
          {
            sub_1883F7480();
          }

          v38 = type metadata accessor for Logger();
          sub_1883F85F4(v38, qword_1EA90C9F8);

          v15 = Logger.logObject.getter();
          static os_log_type_t.info.getter();
          sub_1884F46D0();
          if (!sub_188430A60())
          {
            goto LABEL_11;
          }

          goto LABEL_33;
        }

        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F7480();
        }

        v59 = type metadata accessor for Logger();
        sub_1883F85F4(v59, qword_1EA90C9F8);

        v15 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_1884F46D0();
        if (!sub_188430A60())
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F7480();
        }

        v52 = type metadata accessor for Logger();
        sub_1883F85F4(v52, qword_1EA90C9F8);

        v15 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_1884F46D0();
        if (!sub_188430A60())
        {
          goto LABEL_11;
        }
      }

      sub_1883F9984();
      v53 = sub_1883F8C00();
      sub_1884F4550(v53);
      v54 = sub_1884F46B8(4.8149e-34);
      sub_1884F45D4(v54, v55);
      sub_1883FEFE0();

      *(v10 + 4) = v34;
LABEL_10:
      sub_188410C98();
      _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      sub_1883F8EAC();
      sub_1883F82B8();
LABEL_11:

      goto LABEL_42;
    }

    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v43 = type metadata accessor for Logger();
    sub_1883F85F4(v43, qword_1EA90C9F8);

    v15 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1884F46D0();
    if (!sub_188430A60())
    {
      goto LABEL_11;
    }

LABEL_33:
    sub_1883F9984();
    v44 = sub_1883F8C00();
    sub_1884F4550(v44);
    v45 = sub_1884F46B8(4.8149e-34);
    sub_1884F45D4(v45, v46);
    sub_1883FEFE0();

    *(v10 + 4) = v34;
LABEL_34:
    sub_188410C98();
    _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
    sub_1883F8EAC();
    sub_1883F82B8();
    goto LABEL_11;
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v24 = type metadata accessor for Logger();
  sub_1883F85F4(v24, qword_1EA90C9F8);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_18840FB34();
    v60[1] = sub_18840BE14();
    *v27 = 136315394;
    v28 = sub_1883FE43C();
    sub_1884F45D4(v28, v29);
    sub_1883FEFE0();

    *(v27 + 4) = v1;
    *(v27 + 12) = 2080;
    v30 = [*(v13 + 16) lastFetchDatabaseChangesDate];
    if (v30)
    {
      v31 = v30;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = type metadata accessor for Date();
      v33 = 0;
    }

    else
    {
      v32 = type metadata accessor for Date();
      v33 = 1;
    }

    sub_1883F90F4(v9, v33, 1, v32);
    v56 = String.init<A>(describing:)();
    v58 = sub_1884F45D4(v56, v57);

    *(v27 + 14) = v58;
    _os_log_impl(&dword_1883EA000, v25, v26, "%s will fetch database and zone changes because our last fetch was too long ago: (%s", v27, 0x16u);
    sub_18841FC2C();
    sub_1884F4470();
    sub_1884037D8();
  }

  else
  {
  }

LABEL_42:
  sub_1883F8178();
}

uint64_t CKQualityOfServiceOrdering(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return 2;
    }

    if (a1 == 9)
    {
      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 33:
        return 4;
      case 25:
        return 3;
      case 17:
        return 1;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_188402A90()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 1888);
  v6 = *(v4 + 1856);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  memcpy((v2 + 176), (v2 + 416), 0x50uLL);
  sub_1883FBF6C(v2 + 176);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_188402B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = v8;
  sub_1884E01A8(a1, a2, a3, a4, a5, a6, a7, a8, v42[0]);
  sub_1884023F4();
  v10 = v9;

  v11 = v8[233];
  v12 = v8[232];
  v13 = (v8 + 2);
  if (v10)
  {
    sub_1883FAB38(v13, (v8 + 202));
    v14 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    sub_1883FB300((v8 + 2));
    if (sub_1883F9084())
    {
      v15 = v8[232];
      sub_18840FB34();
      v43 = sub_1883FEEE0();
      *v12 = 136315394;
      v16 = sub_1883FE43C();
      sub_1883FE340(v16, v17, &v43);
      sub_1883FE2FC();
      sub_1883FED4C();
      sub_1884E0248();
      CKSyncEngine.FetchChangesOptions.Scope.description.getter();
      sub_188404258();

      sub_18840C150(v18, v19, &v43);
      sub_188404FC8();

      *(v12 + 14) = v42;
      sub_1883F831C();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
      sub_1884022C8();
      sub_1883FD784();
      sub_1883F82B8();
    }

    v25 = swift_task_alloc();
    v8[237] = v25;
    *v25 = v8;
    v25[1] = sub_188411684;
    v26 = v8[232];

    return sub_1884D0668();
  }

  else
  {
    sub_1883FAB38(v13, (v8 + 82));
    v28 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    sub_1883FB300((v8 + 2));
    if (sub_1883F9084())
    {
      v29 = v8[232];
      sub_18840FB34();
      v43 = sub_1883FEEE0();
      *v12 = 136315394;
      v30 = sub_1883FE43C();
      sub_1883FE340(v30, v31, &v43);
      sub_1883FE2FC();
      sub_1883FED4C();
      sub_1884E0248();
      CKSyncEngine.FetchChangesOptions.Scope.description.getter();
      sub_188404258();

      sub_18840C150(v32, v33, &v43);
      sub_188404FC8();

      *(v12 + 14) = v42;
      sub_1883F831C();
      _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
      sub_1884022C8();
      sub_1883FD784();
      sub_1883F82B8();
    }

    v8[248] = 0;
    v39 = swift_task_alloc();
    v40 = sub_188410CE8(v39);
    *v40 = v41;
    sub_1883F74DC(v40);

    return sub_18840E178();
  }
}

uint64_t sub_188402E3C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

uint64_t sub_188402E84(void *a1)
{
  v2 = sub_188400B68(a1, v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_188402EBC()
{

  return swift_beginAccess();
}

uint64_t sub_188402ED8(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_188402EF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[820] = a4;
  v4[821] = a3;
  v4[822] = result;
  return result;
}

void sub_188402F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  sub_1883F60E8(v9, v10, a9);
}

void sub_188403008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188403020()
{
}

uint64_t sub_188403038()
{

  return swift_task_alloc();
}

uint64_t sub_188403098()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18840FF64;

  return sub_188403128();
}

uint64_t sub_188403128()
{
  *(v1 + 280) = v0;
  v2 = *(*(sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780) - 8) + 64) + 15;
  *(v1 + 288) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188403270, v0, 0);
}

uint64_t sub_1884031C4()
{
  sub_1883F7120();
  v1 = *(*(v0 + 16) + 264);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_18840F250;
  v3 = *(v0 + 16);

  return sub_1883FD964(v2, 1, &unk_1886FB2D0, v3);
}

uint64_t sub_188403270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F74A0();
    swift_once();
  }

  v14 = *(v12 + 280);
  v15 = type metadata accessor for Logger();
  *(v12 + 296) = sub_1883FDE5C(v15, qword_1EA90C9F8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    sub_1883FF1D0();
    v18 = swift_slowAlloc();
    sub_1883F9860();
    v13 = swift_slowAlloc();
    a10 = v13;
    *v18 = 136315138;
    v19 = sub_1883FE43C();
    v22 = sub_1883FC788(v19, v20, v21);

    *(v18 + 4) = v22;
    sub_1883F8468(&dword_1883EA000, v23, v24, "%s updating account info");
    sub_1884101E8();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
  }

  sub_1883FC7A0(__sTestOverridesAvailable);
  if (v25)
  {
    v26 = [objc_opt_self() defaultCenter];
    if (qword_1EA90CBB8 != -1)
    {
      swift_once();
    }

    [v26 postNotificationName:qword_1EA919C80 object:*(v12 + 280)];
  }

  v27 = *(v12 + 280);
  sub_1884C7CB8(v12 + 216);
  if (*(v12 + 240))
  {
    v28 = *(v12 + 280);
    sub_18843E080((v12 + 216), v12 + 176);
    type metadata accessor for SyncEngine();
    v29 = *(v28 + 128);
    *(v12 + 304) = v29;
    *(v12 + 312) = sub_18850BCF0();
    *(v12 + 320) = v30;
    *(v12 + 328) = v31;
    *(v12 + 336) = v32;
    *(v12 + 344) = [*(v29 + 16) lastKnownUserRecordID];
    v33 = swift_task_alloc();
    *(v12 + 352) = v33;
    *v33 = v12;
    v33[1] = sub_18840B0A0;
    sub_1883F7E58();

    return sub_1884CEED0(v34, v35, v36, v37, v38, v39, v40);
  }

  else
  {
    v43 = *(v12 + 280);
    sub_188442B84(v12 + 216, &qword_1EA90E3D8, &qword_1886FAF80);

    v44 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883FF1D0();
      v45 = swift_slowAlloc();
      sub_1883F9860();
      swift_slowAlloc();
      sub_1883FF2D4();
      *v45 = 136315138;
      v46 = sub_1883FE43C();
      sub_1883FC788(v46, v47, v48);
      sub_1883FE2FC();
      *(v45 + 4) = v13;
      sub_1883F7A44(&dword_1883EA000, v49, v50, "%s BUG IN CLOUDKIT: CKSyncEngine accountProvider is nil");
      sub_1883F8EAC();
      v51 = sub_1884055A0();
      MEMORY[0x18CFD7E80](v51);
    }

    v52 = *(v12 + 288);

    sub_1883F816C();
    sub_1883F7E58();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
  }
}

uint64_t sub_1884035D0()
{
  sub_1883F7120();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v1[1] = sub_1884061E0;

  return sub_188403098();
}

uint64_t *sub_188403664(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1884036F4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 48);
  return v2;
}