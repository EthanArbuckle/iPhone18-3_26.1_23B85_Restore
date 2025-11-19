@interface SubmitTestFlightFeedbackTask
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation SubmitTestFlightFeedbackTask

- (void)mainWithCompletionHandler:(id)a3
{
  v69 = a3;
  if (self)
  {
    v4 = *(&self->super.super._finished + 1);
    v5 = sub_10020272C(v4);

    v6 = objc_opt_new();
    v7 = *(&self->super.super._finished + 1);
    v8 = sub_100202490(v7);
    v9 = [v8 unsignedLongLongValue];
    if (v6)
    {
      *(v6 + 64) |= 2u;
      *(v6 + 16) = v9;
    }

    v10 = [v5 timestamp];
    if (v6)
    {
      *(v6 + 64) |= 4u;
      *(v6 + 24) = v10;
    }

    v11 = objc_opt_new();
    v12 = [v5 email];
    sub_1002313E4(v11, v12);

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v13 = *(&self->super.super._finished + 1);
    v14 = sub_100202B2C(v13);

    v15 = [v14 countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v73;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v73 != v17)
          {
            objc_enumerationMutation(v14);
          }

          sub_100230CE0(v11, *(*(&v72 + 1) + 8 * i));
        }

        v16 = [v14 countByEnumeratingWithState:&v72 objects:v76 count:16];
      }

      while (v16);
    }

    v19 = [v5 comments];
    sub_1002313FC(v11, v19);

    v20 = [v5 incidentID];
    sub_100231414(v11, v20);

    sub_10032D98C(v6, v11);
    v21 = objc_opt_new();
    v22 = *(&self->super.super._finished + 1);
    v23 = sub_100202B88(v22);
    v24 = [v23 unsignedLongLongValue];
    if (v21)
    {
      *(v21 + 72) |= 1u;
      *(v21 + 8) = v24;
    }

    v25 = *(&self->super.super._finished + 1);
    v26 = v25;
    if (v25)
    {
      LOBYTE(v25) = sub_10023E4DC(v25, @"is_app_clip");
    }

    if (v21)
    {
      *(v21 + 72) |= 8u;
      *(v21 + 68) = v25;
    }

    v27 = *(&self->super.super._finished + 1);
    v28 = sub_100202510(v27);

    if (v28)
    {
      sub_10040BF04(v21, v28);
    }

    v29 = *(&self->super.super._finished + 1);
    v30 = sub_100202548(v29);

    v31 = [v30 bundleID];
    sub_10040BEBC(v21, v31);

    v32 = [v30 bundleVersion];
    sub_10040BEEC(v21, v32);

    v33 = [v30 shortVersion];
    sub_10040BED4(v21, v33);

    v67 = v30;
    v34 = [v30 platform];
    if (v21)
    {
      if (v34 == 2)
      {
        v35 = 3;
      }

      else
      {
        v35 = 1;
      }

      if (v34 == 1)
      {
        v35 = 2;
      }

      *(v21 + 72) |= 4u;
      *(v21 + 64) = v35;
      v36 = [v5 appUptime];
      *(v21 + 72) |= 2u;
      *(v21 + 16) = v36;
    }

    else
    {
      [v5 appUptime];
    }

    sub_10032D9A4(v6, v21);
    v37 = objc_opt_new();
    v38 = [v5 deviceType];
    sub_10038C250(v37, v38);

    v39 = [v5 osVersion];
    sub_10038C268(v37, v39);

    v40 = [v5 architecture];
    sub_10038C280(v37, v40);

    v41 = [v5 locale];
    sub_10038C2B0(v37, v41);

    v42 = [v5 timeZone];
    sub_10038C2C8(v37, v42);

    v43 = [v5 carrier];
    sub_10038C2E0(v37, v43);

    v44 = [v5 cellularNetworkType];
    sub_10038C2F8(v37, v44);

    v45 = [v5 networkConnectionType];
    v68 = v28;
    if ([v45 isEqualToString:@"WI_FI"])
    {
      v46 = 0;
    }

    else if ([v45 isEqualToString:@"MOBILE_DATA"])
    {
      v46 = 1;
    }

    else if ([v45 isEqualToString:@"WIRE"])
    {
      v46 = 2;
    }

    else if ([v45 isEqualToString:@"NONE"])
    {
      v46 = 3;
    }

    else
    {
      v46 = 0;
    }

    if (v37)
    {
      *(v37 + 104) |= 2u;
      *(v37 + 40) = v46;

      v47 = [v5 batteryPercentage];
      *(v37 + 104) |= 1u;
      *(v37 + 16) = v47;
      if (+[AMSDevice deviceIsiPad])
      {
        v48 = 3;
      }

      else
      {
        v48 = 1;
      }

      *(v37 + 104) |= 4u;
      *(v37 + 44) = v48;
      *(v37 + 104) |= 8u;
      *(v37 + 48) = 1;
    }

    else
    {

      [v5 batteryPercentage];
      +[AMSDevice deviceIsiPad];
    }

    v49 = objc_opt_new();
    v50 = [v5 screenWidth];
    if (v49)
    {
      *(v49 + 16) |= 2u;
      *(v49 + 12) = v50;
      v51 = [v5 screenHeight];
      *(v49 + 16) |= 1u;
      *(v49 + 8) = v51;
    }

    else
    {
      [v5 screenHeight];
    }

    sub_10038C298(v37, v49);
    v52 = objc_opt_new();
    v53 = [v5 diskAvailable];
    if (v52)
    {
      *(v52 + 24) |= 1u;
      *(v52 + 8) = v53;
      v54 = [v5 diskTotal];
      *(v52 + 24) |= 2u;
      *(v52 + 16) = v54;
    }

    else
    {
      [v5 diskTotal];
    }

    sub_10038C310(v37, v52);
    sub_10032D9BC(v6, v37);
    v55 = [v5 pairedWatchOSVersion];
    if (v55)
    {
      v56 = v55;
      v57 = [v5 pairedWatchModel];

      if (v57)
      {
        v58 = objc_opt_new();
        v59 = [v5 pairedWatchModel];
        sub_100350A5C(v58, v59);

        v60 = [v5 pairedWatchOSVersion];
        sub_100350A74(v58, v60);

        sub_10032D9D4(v6, v58);
      }
    }

    v61 = *(&self->super._entity + 2);
  }

  else
  {
    v6 = 0;
    v61 = 0;
  }

  v62 = v61;
  v63 = [v62 URLForKey:@"testflight-visual-feedback/upload-feedback-url"];

  if (v63)
  {
    v64 = sub_1002EB0AC(self, v63);

    v65 = [v6 data];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_1002746DC;
    v70[3] = &unk_10051DCA0;
    v70[4] = self;
    v71 = v69;
    sub_1002EAA28(self, 4, v64, v65, v70);
  }

  else
  {
    v64 = [NSString stringWithFormat:@"Failed to find URL for feedback upload"];
    v66 = ASDErrorWithDescription();
    (*(v69 + 2))(v69, v66);
  }
}

@end