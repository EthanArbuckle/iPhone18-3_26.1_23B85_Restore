@interface XboxEliteV2GamepadHIDServicePlugin
- (void)dispatchPowerOnMessageCompletion:(id)a3;
- (void)handleInputPayload:(int64_t)a3 withData:(id)a4 timestamp:(unint64_t)a5;
@end

@implementation XboxEliteV2GamepadHIDServicePlugin

- (void)handleInputPayload:(int64_t)a3 withData:(id)a4 timestamp:(unint64_t)a5
{
  v8 = a4;
  v9 = a4;
  v10 = [v9 bytes];
  v11 = [v9 length];

  if (v11 <= 0x11)
  {
    sub_850C();
  }

  else
  {
    v12 = v10[2];
    v13 = ((v12 >> 6) & 1);
    v33 = v13;
    v14 = ((v12 >> 7) & 1);
    v15 = ((v12 >> 12) & 1);
    v16 = ((v12 >> 13) & 1);
    LOWORD(v13) = v10[3];
    *&v17 = LODWORD(v13);
    v18 = *&v17 / 1023.0;
    LOWORD(v17) = v10[4];
    v19 = v17 / 1023.0;
    v20 = ((v12 >> 14) & 1);
    v21 = (v12 >> 15);
    v32 = vcvtq_f32_u32(vmovl_u16(vbic_s8(0x1000100010001, vceqz_s16(vand_s8(vdup_n_s16(v12), 0x800040002000100)))));
    v22 = vcvt_f32_u32((*&vshl_u32((*&vdup_n_s32(v12) & 0xFFFF00FFFFFF00FFLL), 0xFFFFFFFBFFFFFFFCLL) & 0xFFFFFFF1FFFFFFF1));
    v23 = vdivq_f32(vcvtq_f32_s32(vmovl_s16(*(v10 + 5))), vdupq_n_s32(0x46FFFE00u));
    v24 = vrev64q_s32(v23);
    v25 = vzip1q_s32(v24, v24);
    v26 = vzip2q_s32(v24, v24);
    v27 = vmovn_s16(vuzp1q_s16(vcgtzq_f32(v25), vcgtzq_f32(v26)));
    *v25.f32 = vmovn_s16(vuzp1q_s16(vcltzq_f32(v25), vcltzq_f32(v26)));
    v28 = vextq_s8(v23, vnegq_f32(vdupq_laneq_s64(v24, 1)), 8uLL);
    v23.i64[1] = vnegq_f32(v24).u64[0];
    v24.i16[0] = v27.u8[0];
    v24.i16[1] = v25.u8[1];
    v24.i16[2] = v25.u8[2];
    v24.i16[3] = v27.u8[3];
    v29 = vandq_s8(vextq_s8(v23, v23, 4uLL), vcltzq_s32(vshlq_n_s32(vmovl_u16(*v24.f32), 0x1FuLL)));
    v23.i16[0] = v27.u8[4];
    v23.i16[1] = v25.u8[5];
    v23.i16[2] = v25.u8[6];
    v23.i16[3] = v27.u8[7];
    v30 = vandq_s8(vextq_s8(v28, v28, 4uLL), vcltzq_s32(vshlq_n_s32(vmovl_u16(*v23.i8), 0x1FuLL)));
    v31 = v29;
    [(GCGamepadHIDServicePlugin *)self dispatchMenuButtonEventWithValue:(v12 >> 2) & 1 timestamp:a5];
    [(GCGamepadHIDServicePlugin *)self dispatchOptionsButtonEventWithValue:(v10[2] >> 3) & 1 timestamp:a5];
    v34 = 0;
    v35 = v32;
    v36 = v22;
    v37 = v33;
    v38 = v14;
    v39 = v15;
    v40 = v16;
    v42 = v30;
    v41 = v31;
    v43 = v18;
    v44 = v19;
    v45 = v20;
    v46 = v21;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    [(GCGamepadHIDServicePlugin *)self dispatchGameControllerExtendedEventWithState:&v34 timestamp:a5];
  }
}

- (void)dispatchPowerOnMessageCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10F8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2F78(&dword_0, v6, v7, "Power on", v8, v9, v10, v11, v18, v19, 0);
  }

  *(&v19 + 3) = 8197;
  sequence = self->super._sequence;
  do
  {
    v14 = sequence;
    sequence = 1;
  }

  while (!v14);
  self->super._sequence = v14 + 1;
  BYTE5(v19) = v14;
  HIWORD(v19) = 1;
  sub_808C(self, &v19 + 3, 5, v12, 0);
  HIWORD(v18) = 8197;
  v16 = self->super._sequence;
  do
  {
    v17 = v16;
    v16 = 1;
  }

  while (!v17);
  self->super._sequence = v17 + 1;
  LOBYTE(v19) = v17;
  *(&v19 + 1) = 1551;
  sub_808C(self, &v18 + 6, 5, v15, v4);
}

@end