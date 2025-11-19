_WORD *sub_105630(_WORD *result)
{
  *(v1 - 144) = 0;
  *result = 0;
  *(v1 - 104) = result + 1;
  *(v1 - 96) = 0;
  return result;
}

_WORD *sub_105654(_WORD *result)
{
  *(v3 - 208) = 0;
  *result = 0;
  *(v3 - 104) = result + 1;
  *(v3 - 96) = 0;
  v4 = *(v2 + 16);
  v5 = *(v1 + 29704);
  return result;
}

uint64_t sub_105674()
{
  v1 = v0[3607];
  v2 = v0[3602];
  v3 = v0[3571];
  v4 = v0[3497];
  return v0[3498] + 64;
}

_WORD *sub_105690(_WORD *result)
{
  *(v1 - 208) = 0;
  STACK[0x550] = 0;
  *result = 0;
  *(v1 - 96) = result + 1;
  return result;
}

uint64_t sub_1056B8()
{
  STACK[0x4B0] = v0[3519];
  STACK[0x4B8] = v0[3517];
  v3 = v0[3515];
  *(v1 - 256) = v0[3516];
  *(v1 - 248) = v3;
  v4 = v0[3513];
  *(v1 - 240) = v0[3514];
  *(v1 - 232) = v4;
  v5 = v0[3509];
  *(v1 - 224) = v0[3512];
  *(v1 - 216) = v5;
  v6 = v0[3507];
  *(v1 - 208) = v0[3508];
  *(v1 - 200) = v6;
  v7 = v0[3505];
  *(v1 - 192) = v0[3506];
  *(v1 - 184) = v7;
  v8 = v0[3503];
  *(v1 - 176) = v0[3504];
  *(v1 - 168) = v8;
  v9 = v0[3501];
  *(v1 - 160) = v0[3502];
  *(v1 - 152) = v9;
  *(v1 - 144) = v0[3500];
}

double sub_105748@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 224) = a1;
  result = 0.0;
  *(v1 + 232) = 0u;
  v3 = v1 + 232;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 56) = -64;
  return result;
}

uint64_t sub_105768()
{
  v3 = v0[3514];
  *(v1 - 256) = v0[3515];
  *(v1 - 248) = v3;
  v4 = v0[3512];
  *(v1 - 240) = v0[3513];
  *(v1 - 232) = v4;
  v5 = v0[3508];
  *(v1 - 224) = v0[3509];
  *(v1 - 216) = v5;
  v6 = v0[3506];
  *(v1 - 208) = v0[3507];
  *(v1 - 200) = v6;
  v7 = v0[3504];
  *(v1 - 192) = v0[3505];
  *(v1 - 184) = v7;
  v8 = v0[3502];
  *(v1 - 176) = v0[3503];
  *(v1 - 168) = v8;
  v9 = v0[3500];
  *(v1 - 160) = v0[3501];
  *(v1 - 152) = v9;
}

uint64_t sub_1057EC()
{
  sub_2D20((v2 + v3), v0);
  v4 = *(v1 + 8);
  return v0;
}

uint64_t sub_105820()
{
  sub_2D64((v0 + v4));
  sub_2D64((v0 + v1));
  sub_2D64((v0 + v3));
  return sub_2D64((v0 + v2));
}

_WORD *sub_105858(_WORD *result)
{
  *(v1 - 208) = 0;
  *result = 0;
  *(v1 - 104) = result + 1;
  *(v1 - 96) = 0;
  return result;
}

void sub_10586C()
{
  STACK[0x4A0] = v0[3520];
  STACK[0x4A8] = v0[3519];
  STACK[0x4B0] = v0[3517];
  STACK[0x4B8] = v0[3516];
}

_WORD *sub_105890(_WORD *result)
{
  *(v2 - 160) = 0;
  *result = 0;
  *(v2 - 120) = result + 1;
  *(v2 - 112) = 0;
  v3 = *(v1 + 16);
  return result;
}

uint64_t sub_1058AC()
{
  v1 = v0[3607];
  v2 = v0[3602];
  v3 = v0[3571];
  v4 = v0[3497];
  return v0[3498] + 64;
}

void sub_1058C8()
{
  v1 = v0[3703];
  v2 = v0[3700];
  v3 = v0[3697];
  v4 = v0[3693];
  v5 = v0[3690];
  v6 = v0[3689];
  v7 = v0[3688];
}

uint64_t sub_1058F8()
{
  v2 = *(v0 + 28864);

  return swift_beginAccess();
}

uint64_t sub_10591C()
{
  v1 = v0[3545];
  v2 = v0[3497];
  return v0[3498] + 64;
}

void sub_105930()
{
  STACK[0x528] = v0[3711];
  STACK[0x540] = v0[3607];
  STACK[0x538] = v0[3602];
  STACK[0x530] = v0[3571];
  v1 = v0[3498];
}

uint64_t sub_105958()
{
  *&STACK[0x550] = *(v0 + v1);

  return sub_3A5A4(&STACK[0x550], v2 - 104, v2 - 96, v2 - 208);
}

uint64_t sub_105980()
{
  v1 = v0[3546];
  v2 = v0[3545];
  v3 = v0[3533];
  v4 = v0[3497];
  return v0[3498] + 64;
}

uint64_t sub_10599C(__n128 a1)
{
  *&STACK[0x550] = a1;

  return sub_3A5A4(&STACK[0x550], v1 - 104, v1 - 96, v1 - 208);
}

void sub_1059C0()
{
  v1 = v0[3690];
  v2 = v0[3689];
  v3 = v0[3688];
}

void sub_1059D0()
{
  STACK[0x548] = v1;
  v2 = v0[3703];
  v3 = v0[3700];
  v4 = v0[3697];
  v5 = v0[3693];
  v6 = v0[3690];
  v7 = v0[3689];
  v8 = v0[3688];
}

_WORD *sub_1059F4(_WORD *result)
{
  *(v1 - 160) = 0;
  *result = 0;
  *(v1 - 120) = result + 1;
  *(v1 - 112) = 0;
  return result;
}

void sub_105A08()
{
  v1 = v0[3690];
  v2 = v0[3689];
  v3 = v0[3688];
}

uint64_t sub_105A18()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

_WORD *sub_105A28(_WORD *result)
{
  *(v1 - 128) = 0;
  *(v1 - 120) = 0;
  *result = 0;
  *(v1 - 136) = result + 1;
  return result;
}

uint64_t sub_105A84(uint64_t *a1)
{
  sub_2D64(a1);
  sub_2D64((v1 + v3));
  return sub_2D64((v1 + v2));
}

void sub_105AAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_105ACC(_WORD *a1)
{
  *(v2 - 136) = 0;
  *(v2 - 128) = 0;
  *a1 = 0;
  *(v2 - 144) = a1 + 1;

  return sub_1028F0(v1, v2 - 144, v2 - 136, v2 - 128);
}

void sub_105B10()
{
  v2 = v0[3607];
  *(v1 - 128) = v0[3602];
  *(v1 - 120) = v2;
  v3 = v0[3571];
  *(v1 - 144) = v0[3560];
  *(v1 - 136) = v3;
}

uint64_t sub_105B2C(__n128 a1)
{
  *&STACK[0x530] = a1;

  return sub_3A5A4(&STACK[0x530], v1 - 120, v1 - 112, v1 - 160);
}

void sub_105B60()
{
  v1 = v0[3607];
  v2 = v0[3602];
  v3 = v0[3571];
}

uint64_t sub_105B70()
{

  return swift_beginAccess();
}

void sub_105B90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_105BB0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_105BD0()
{
  v2 = *(v0 + 28856);
  *(v1 - 128) = *(v0 + 28816);
  *(v1 - 120) = v2;
}

uint64_t sub_105BE0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_105C10()
{

  return sub_3A5A4(&STACK[0x530], v0 - 120, v0 - 112, v0 - 160);
}

void sub_105C30()
{
  v1 = v0[3703];
  v2 = v0[3700];
  v3 = v0[3697];
}

void sub_105C50()
{
  v2 = *(v0 + 28856);
  *(v1 - 136) = *(v0 + 28816);
  *(v1 - 128) = v2;
}

uint64_t sub_105C60()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_105C70()
{
  sub_2D64((v0 + v2));
  sub_2D64((v0 + v1));
  return 11;
}

void sub_105CB8()
{
  v2 = v0[3675];
  v3 = v0[3674];
  v4 = v0[3673];
  v5 = v0[3672];
  v6 = v0[3671];
  v7 = v0[3670];
  v8 = v0[3669];
  v9 = v0[3668];
  v10 = v0[3667];
  v11 = v0[3666];
  v12 = v0[3665];
  v13 = v0[3664];
  v14 = v0[3663];
  v15 = v0[3662];
  v16 = v0[3661];
  v17 = v0[3660];
  v18 = v0[3659];
  v19 = v0[3658];
  v20 = v0[3657];
  v21 = v0[3656];
  v22 = v0[3655];
  v23 = v0[3654];
  v24 = v0[3653];
  v25 = v0[3652];
  v26 = v0[3651];
  v27 = v0[3650];
  v28 = v0[3649];
  v29 = v0[3648];
  v30 = v0[3647];
  v31 = v0[3646];
  v32 = v0[3645];
  v33 = v0[3644];
  v34 = v0[3643];
  v35 = v0[3642];
  v36 = v0[3641];
  v37 = v0[3640];
  v38 = v0[3639];
  v39 = v0[3638];
  v40 = v0[3637];
  v41 = v0[3636];
  v42 = v0[3635];
  v43 = v0[3634];
  v44 = v0[3633];
  v45 = v0[3632];
  v46 = v0[3631];
  v47 = v0[3630];
  v48 = v0[3629];
  v49 = v0[3628];
  v50 = v0[3627];
  v51 = v0[3626];
  v52 = v0[3625];
  v53 = v0[3624];
  v54 = v0[3623];
  v55 = v0[3622];
  v56 = v0[3621];
  v57 = v0[3620];
  v1 = v0[3619];
  v58 = v0[3618];
  STACK[0x200] = v0[3617];
  STACK[0x208] = v0[3616];
  STACK[0x210] = v0[3615];
  STACK[0x218] = v0[3614];
  STACK[0x220] = v0[3613];
  STACK[0x228] = v0[3612];
  STACK[0x230] = v0[3611];
  STACK[0x238] = v0[3610];
  STACK[0x240] = v0[3607];
  STACK[0x248] = v0[3606];
  STACK[0x250] = v0[3605];
  STACK[0x258] = v0[3604];
  STACK[0x260] = v0[3603];
  STACK[0x268] = v0[3602];
  STACK[0x270] = v0[3601];
  STACK[0x278] = v0[3600];
  STACK[0x280] = v0[3599];
  STACK[0x288] = v0[3598];
  STACK[0x290] = v0[3597];
  STACK[0x298] = v0[3596];
  STACK[0x2A0] = v0[3595];
  STACK[0x2A8] = v0[3594];
  STACK[0x2B0] = v0[3593];
  STACK[0x2B8] = v0[3592];
  STACK[0x2C0] = v0[3591];
  STACK[0x2C8] = v0[3590];
  STACK[0x2D0] = v0[3589];
  STACK[0x2D8] = v0[3588];
  STACK[0x2E0] = v0[3587];
  STACK[0x2E8] = v0[3586];
  STACK[0x2F0] = v0[3585];
  STACK[0x2F8] = v0[3584];
  STACK[0x300] = v0[3583];
  STACK[0x308] = v0[3582];
  STACK[0x310] = v0[3581];
  STACK[0x318] = v0[3580];
  STACK[0x320] = v0[3579];
  STACK[0x328] = v0[3578];
  STACK[0x330] = v0[3577];
  STACK[0x338] = v0[3576];
  STACK[0x340] = v0[3575];
  STACK[0x348] = v0[3574];
  STACK[0x350] = v0[3573];
  STACK[0x358] = v0[3572];
  STACK[0x360] = v0[3571];
  STACK[0x368] = v0[3569];
  STACK[0x370] = v0[3568];
  STACK[0x378] = v0[3565];
  STACK[0x380] = v0[3564];
  STACK[0x388] = v0[3562];
  STACK[0x390] = v0[3561];
  STACK[0x398] = v0[3560];
  STACK[0x3A0] = v0[3558];
  STACK[0x3A8] = v0[3557];
  STACK[0x3B0] = v0[3556];
  STACK[0x3B8] = v0[3555];
  STACK[0x3C0] = v0[3554];
  STACK[0x3C8] = v0[3553];
  STACK[0x3D0] = v0[3552];
  STACK[0x3D8] = v0[3551];
  STACK[0x3E0] = v0[3550];
  STACK[0x3E8] = v0[3549];
  STACK[0x3F0] = v0[3548];
  STACK[0x3F8] = v0[3547];
  STACK[0x400] = v0[3544];
  STACK[0x408] = v0[3543];
  STACK[0x410] = v0[3542];
  STACK[0x418] = v0[3541];
  STACK[0x420] = v0[3540];
  STACK[0x428] = v0[3539];
  STACK[0x430] = v0[3538];
  STACK[0x438] = v0[3537];
  STACK[0x440] = v0[3536];
  STACK[0x448] = v0[3535];
  STACK[0x450] = v0[3534];
  STACK[0x458] = v0[3533];
  STACK[0x460] = v0[3532];
  STACK[0x468] = v0[3531];
  STACK[0x470] = v0[3530];
  STACK[0x478] = v0[3529];
  STACK[0x480] = v0[3528];
  STACK[0x488] = v0[3527];
  STACK[0x490] = v0[3526];
  STACK[0x498] = v0[3525];
  STACK[0x4A0] = v0[3524];
  STACK[0x4A8] = v0[3523];
  STACK[0x4B0] = v0[3522];
  STACK[0x4B8] = v0[3521];
  STACK[0x4C0] = v0[3520];
  STACK[0x4C8] = v0[3519];
  STACK[0x4D0] = v0[3517];
  STACK[0x4D8] = v0[3516];
}

void sub_106130()
{
  v1 = v0[3703];
  v2 = v0[3700];
  v3 = v0[3697];
  v4 = v0[3693];
  v5 = v0[3690];
  v6 = v0[3689];
  v7 = v0[3688];
}

uint64_t sub_106160()
{
  sub_2D20((v1 + v2), v0);

  return type metadata accessor for WellnessSnippets();
}

uint64_t sub_1061A4()
{

  return swift_beginAccess();
}

void sub_1061C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_1061E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_106204()
{

  return swift_beginAccess();
}

BOOL sub_106220()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_10623C()
{

  return os_log_type_enabled(v1, v0);
}

void sub_106270()
{
  v2 = v0[3750];
  v3 = v0[3607];
  *(v1 - 176) = v0[3602];
  *(v1 - 168) = v3;
  v4 = v0[3571];
  *(v1 - 192) = v2;
  *(v1 - 184) = v4;
}

char *sub_10628C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3546];
  v3 = v1[3545];
  v4 = v1[3497];
  return v1 + a1;
}

void sub_1062A0()
{
  v2 = v0[3607];
  *(v1 - 160) = v0[3602];
  *(v1 - 152) = v2;
  v3 = v0[3571];
}

void sub_1062C8()
{
  v1 = v0[3703];
  v2 = v0[3700];
  v3 = v0[3697];
  v4 = v0[3693];
}

void *sub_1062DC()
{

  return memcpy((v1 + v0), (v1 + 20104), 0x41uLL);
}

void sub_1062FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void *sub_106328(void *a1)
{

  return memcpy(a1, (v1 + 20104), 0x41uLL);
}

BOOL sub_106344()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10636C()
{
  STACK[0x4C0] = v0[3516];
  STACK[0x4C8] = v0[3515];
  v3 = v0[3513];
  *(v1 - 256) = v0[3514];
  *(v1 - 248) = v3;
  v4 = v0[3509];
  *(v1 - 240) = v0[3512];
  *(v1 - 232) = v4;
  v5 = v0[3507];
  *(v1 - 224) = v0[3508];
  *(v1 - 216) = v5;
  v6 = v0[3505];
  *(v1 - 208) = v0[3506];
  *(v1 - 200) = v6;
  v7 = v0[3503];
  *(v1 - 192) = v0[3504];
  *(v1 - 184) = v7;
  v8 = v0[3501];
  *(v1 - 176) = v0[3502];
  *(v1 - 168) = v8;
  *(v1 - 160) = v0[3500];
}

void sub_1063E8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_106404()
{
  v2 = *(v0 + 28872);
  v3 = *(v0 + 28864);
}

uint64_t sub_106454(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = v4;
  *(result + 48) = v3;
  *(result + 56) = v2;
  return result;
}

void sub_1064A8()
{
  v1 = v0[3700];
  v2 = v0[3697];
  v3 = v0[3693];
  STACK[0x520] = v0[3690];
}

void sub_1064CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v32 = *(v31 - 104);
  *v27 = *(v31 - 96);
  v27[1] = v32;
  *(v26 + v29) = 1;
  *(v26 + *(v31 - 120)) = *(v31 - 132) & 1;
  *v30 = a25;
  v30[1] = a24;
  *v28 = a22;
  v28[1] = a21;
  *v25 = a19;
  v25[1] = a18;
}

uint64_t sub_106514()
{
  v2 = *(v0 + 28872);
  v3 = *(v0 + 28864);

  return sub_3A58C();
}

BOOL sub_106530()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10654C()
{
  v2 = *(v0 + 28872);
  v3 = *(v0 + 28864);
}

uint64_t sub_10658C()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1065B4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *v10 = 0;
  v10[1] = 0;
  v13 = (v9 + v8[12]);
  v14 = v9 + v8[13];
  v15 = v8[14];
  *(v11 - 120) = v8[15];
  v16 = v9 + v8[16];
  v17 = v9 + v8[17];
  v18 = v9 + v8[18];
  *v13 = a1;
  v13[1] = v7;

  return sub_147DA8(a7);
}

void sub_106620()
{
  *(v1 - 272) = v0;
  *(v1 - 264) = v2;
  *(v1 - 256) = *(v1 - 192);
  *(v1 - 255) = *(v1 - 200);
  *(v1 - 252) = *(v1 - 197);
}

uint64_t sub_106680(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(v3 + 27984);

  return sub_160444(0, 0, a3);
}

uint64_t sub_10669C()
{
  v2 = *(v0 + 28872);
  v3 = *(v0 + 28864);
}

uint64_t sub_1066B8(unint64_t *a1)
{

  return sub_98C8(a1, v2, v1);
}

uint64_t sub_1066F0()
{

  return sub_16C1BC();
}

uint64_t sub_10674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v18 - 88);
  *v16 = *(v18 - 80);
  v16[1] = v19;
  *(v17 + a11) = 0;
  *(v17 + a12) = *(v18 - 92) & 1;
  return a16;
}

uint64_t sub_106774(uint64_t a1)
{

  return sub_103BA0(a1, type metadata accessor for WellnessLoggingLogSpecificMedRejectedConfirmationResultSetParameters);
}

void sub_106798(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void sub_1067C4(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v3 = v1[3703];
  v4 = v1[3702];
  v5 = v1[3700];
  v6 = v1[3699];
  v7 = v1[3697];
  v8 = v1[3696];
  v9 = v1[3571];
  v10 = v1[3570];
}

void sub_1067EC()
{
  *(v3 - 152) = v0;
  *(v3 - 144) = v1;
  v4 = *(v2 + 28368);
  v5 = *(v2 + 28360);
}

uint64_t sub_106810(uint64_t a1)
{
  sub_17464((v1 + v2), a1 + 16);

  return sub_78B14();
}

uint64_t sub_106850(uint64_t a1)
{
  sub_17464((v1 + v2), a1 + 16);

  return sub_78B14();
}

uint64_t sub_106884()
{
  result = v0;
  v2 = STACK[0x520];
  return result;
}

uint64_t sub_106898@<X0>(uint64_t a1@<X8>)
{
  sub_2D64((v1 + a1));

  return sub_16C1DC();
}

double sub_1068C4()
{
  *(v0 + 224) = 8;
  result = 0.0;
  *(v0 + 232) = 0u;
  v2 = v0 + 232;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = -64;
  return result;
}

uint64_t sub_106900()
{

  return sub_376FC(v0 + 20104);
}

uint64_t sub_106918()
{

  return sub_16C4EC();
}

uint64_t sub_106934()
{
  *(v1 + 224) = 6;
  *(v1 + 232) = 0u;
  v4 = v1 + 232;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 56) = -64;

  return sub_376FC(v2 + v0);
}

uint64_t sub_106968()
{

  return sub_C9294(v1 + v0, v1 + v2);
}

BOOL sub_106984()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10699C()
{

  return sub_3A5EC(0);
}

uint64_t sub_106A08()
{

  return sub_3A5EC(0);
}

uint64_t sub_106A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v23[1] = a1;
  v23[2] = a2;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = *(v26 - 128);
  v23[6] = a23;
  *v24 = 0;
  *(v24 + 8) = v25;
}

uint64_t sub_106A50(uint64_t a1)
{

  return String.init(format:_:)(1714433573, 0xE400000000000000, a1);
}

uint64_t sub_106A70()
{

  return sub_3A5EC(0);
}

uint64_t sub_106A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1028F0(v4, a2, a3, a4);
}

void *sub_106AA0()
{

  return memcpy((v1 + v0), (v2 + 224), 0x41uLL);
}

uint64_t sub_106AD4()
{

  return sub_C9294(v1 + v0, v1 + v2);
}

void *sub_106B08(void *a1)
{
  result = sub_2D20(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_106B28()
{
  v2 = *(*(v0 + 27984) + 16);
}

void sub_106B44()
{
  v1 = v0[3706];
  v2 = v0[3703];
  v3 = v0[3700];
  v4 = v0[3697];
  v5 = v0[3693];
  v6 = v0[3690];
}

void sub_106BCC()
{
  v1 = v0[3703];
  v2 = v0[3700];
  v3 = v0[3697];
}

void *sub_106BDC(void *a1)
{

  return memcpy(a1, (v1 + 224), 0x41uLL);
}

void sub_106C04()
{
  v1 = v0[3690];
  v2 = v0[3689];
  v3 = v0[3688];
}

uint64_t sub_106C24(uint64_t a1)
{
  sub_17464((v1 + v2), a1 + 16);

  return sub_78B14();
}

uint64_t sub_106C68()
{

  return sub_3A5EC(0);
}

uint64_t sub_106C80()
{

  return sub_C9294(v2 + 24, v0 + v1);
}

void sub_106C98()
{
  v1 = v0[3703];
  v2 = v0[3700];
  v3 = v0[3697];
}

void sub_106CC8()
{
  v2 = v0[3693];
  *(v1 - 168) = v0[3690];
  v3 = v0[3689];
  v4 = v0[3688];
}

void sub_106D10(uint64_t a1@<X8>)
{
  v5 = v3 + *(v4 + 72);
  *v2 = a1;
  v2[1] = v1;
  v6 = STACK[0x490];
}

id sub_106D40(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_106D58(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_106D70()
{

  return sub_1039B4(v0, v1);
}

uint64_t sub_106D88()
{

  return sub_2D64((v0 + v1));
}

uint64_t sub_106DA0(__n128 a1)
{
  *(v1 - 128) = a1;

  return sub_3A5A4(v1 - 128, v1 - 152, v1 - 144, v1 - 136);
}

id sub_106DC4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_106DDC(uint64_t a1, uint64_t a2)
{

  return sub_B9BF4(v2, a2, 0);
}

uint64_t sub_106DF8()
{

  return sub_C9294(v0 + 24, v1 + v2);
}

uint64_t sub_106E10()
{

  return sub_16C4EC();
}

uint64_t sub_106E2C()
{

  return sub_16C4CC();
}

uint64_t sub_106E50()
{
  v2 = *(v0 + 28872);
  v3 = *(v0 + 28864);
}

uint64_t sub_106E6C()
{
  v2 = *(v0 + 28872);
  v3 = *(v0 + 28864);
}

uint64_t sub_106E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_1E634(a16, v16 + a13, a3, a4);
}

uint64_t sub_106EA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_1E634(v13, v12 + a12, a3, a4);
}

uint64_t sub_106EC0()
{
  v2 = *(v0 + 32);

  return sub_16C11C();
}

void *sub_106EDC()
{

  return memcpy((v1 - 176), (v0 + 224), 0x41uLL);
}

uint64_t sub_106EF8()
{
}

uint64_t sub_106F14()
{

  return sub_C9294(v0 + v1, v0 + v2);
}

uint64_t sub_106F30()
{

  return swift_allocObject();
}

uint64_t sub_106FA4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 28816);
  return v2 & 1;
}

uint64_t sub_106FB8(__int128 *a1)
{
  sub_17464(a1, v2 + v1);

  return sub_16C1DC();
}

uint64_t sub_107058()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 160);
  return *(v1 - 152);
}

void sub_107070()
{
  v2 = *(v1 - 152);
  v0[1] = *(v1 - 144);
  v0[2] = v2;
  v3 = *(v1 - 176);
  v0[3] = *(v1 - 168);
  v0[4] = v3;
}

void sub_1070F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_107110@<X0>(char a1@<W8>)
{
  *v1 = v2;
  *(v1 + 8) = a1 & 1;
}

uint64_t sub_107130()
{
  v3 = *(v1 + 27976);
  v4 = *(v1 + 27984) + 64;

  return sub_8284(v4, v1 + v0);
}

uint64_t sub_107150()
{

  return sub_16DBEC();
}

void sub_107170(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_107188@<X0>(uint64_t a1@<X8>)
{

  return sub_10374C(v2, v1 + a1);
}

uint64_t sub_1071A0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 28528);

  return sub_214C(a1, a2, 1, v4);
}

uint64_t sub_1071B8()
{
  v2 = *(v0 + 16);
}

uint64_t sub_1071D0()
{

  return sub_16C4EC();
}

uint64_t sub_1071E8(uint64_t a1)
{

  return sub_8748(a1, v2, v1);
}

uint64_t sub_107288()
{
  v1 = sub_10E3C4();
  sub_4348(v1);
  v3 = *(v2 + 64);
  sub_433C();
  __chkstk_darwin(v4);
  sub_10E298();
  sub_2440(&qword_1C6078, &unk_172520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_16F530;
  sub_10DF00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_77590();
  sub_7B09C(v9, v10, v11, &unk_16F510);
  v12 = sub_16D5CC();
  if (sub_369C(v0, 1, v12) == 1)
  {
    sub_5CFC8(v0, &qword_1C5800, &unk_16F510);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v12;
    sub_9910((v5 + 48));
    sub_5DE54(v12);
    (*(v13 + 32))();
  }

  return v5;
}

void sub_1073C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v24;
  a20 = v25;
  v26 = sub_2440(&qword_1C5800, &unk_16F510);
  v27 = sub_4348(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v30);
  sub_76B1C();
  __chkstk_darwin(v31);
  sub_5E160();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  sub_2440(&qword_1C6078, &unk_172520);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1731B0;
  sub_38B4C();
  *(v36 + 32) = 0xD000000000000016;
  *(v36 + 40) = v37;
  sub_76E28();
  sub_7B09C(v38, v39, v40, &unk_16F510);
  v41 = sub_16D5CC();
  sub_76A04(v34);
  if (v42)
  {
    sub_5CFC8(v34, &qword_1C5800, &unk_16F510);
    *(v35 + 48) = 0u;
    *(v35 + 64) = 0u;
  }

  else
  {
    *(v35 + 72) = v41;
    sub_9910((v35 + 48));
    sub_76AEC();
    v44 = *(v43 + 32);
    sub_76E28();
    v45();
  }

  sub_38B4C();
  *(v35 + 80) = 0xD000000000000016;
  *(v35 + 88) = v46;
  v47 = type metadata accessor for WellnessLoggingBloodPressureParameters(0);
  sub_10E2F0(&qword_1C5800, &unk_16F510, v47[5]);
  sub_76A04(v23);
  if (v42)
  {
    sub_5CFC8(v23, &qword_1C5800, &unk_16F510);
    *(v35 + 96) = 0u;
    *(v35 + 112) = 0u;
  }

  else
  {
    *(v35 + 120) = v41;
    sub_9910((v35 + 96));
    sub_76AEC();
    v49 = *(v48 + 32);
    sub_10E31C();
    v50();
  }

  sub_10DF00();
  *(v35 + 128) = v51;
  *(v35 + 136) = v52;
  sub_7B09C(v21 + v47[6], v22, &qword_1C5800, &unk_16F510);
  sub_76A04(v22);
  if (v42)
  {
    sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
    *(v35 + 144) = 0u;
    *(v35 + 160) = 0u;
  }

  else
  {
    *(v35 + 168) = v41;
    sub_9910((v35 + 144));
    sub_76AEC();
    v54 = *(v53 + 32);
    sub_77394();
    v55();
  }

  *(v35 + 176) = 0x696C6F7473616964;
  *(v35 + 184) = 0xE900000000000063;
  sub_76D40(v47[7]);
  if (v57)
  {
    v58 = 0;
    *(v35 + 200) = 0;
    *(v35 + 208) = 0;
    v59 = 0;
  }

  else
  {
    v59 = *v56;
    v58 = &type metadata for Double;
  }

  *(v35 + 192) = v59;
  *(v35 + 216) = v58;
  *(v35 + 224) = 0x6144646567676F6CLL;
  *(v35 + 232) = 0xEA00000000006574;
  v60 = *(v21 + v47[8]);
  if (v60)
  {
    v61 = sub_16D4EC();
    v62 = v60;
  }

  else
  {
    v61 = sub_76C6C();
    *(v35 + 248) = 0;
    *(v35 + 256) = 0;
  }

  *(v35 + 240) = v62;
  *(v35 + 264) = v61;
  *(v35 + 272) = 0x63696C6F74737973;
  *(v35 + 280) = 0xE800000000000000;
  sub_76D40(v47[9]);
  if (v64)
  {
    v65 = 0;
    *(v35 + 296) = 0;
    *(v35 + 304) = 0;
    v66 = 0;
  }

  else
  {
    v66 = *v63;
    v65 = &type metadata for Double;
  }

  *(v35 + 288) = v66;
  *(v35 + 312) = v65;
  *(v35 + 320) = 1953066613;
  *(v35 + 328) = 0xE400000000000000;
  sub_7B09C(v21 + v47[10], v20, &qword_1C5800, &unk_16F510);
  sub_76A04(v20);
  if (v42)
  {

    sub_5CFC8(v20, &qword_1C5800, &unk_16F510);
    *(v35 + 336) = 0u;
    *(v35 + 352) = 0u;
  }

  else
  {
    *(v35 + 360) = v41;
    sub_9910((v35 + 336));
    sub_76AEC();
    v68 = *(v67 + 32);
    sub_77590();
    v69();
  }

  sub_45924();
}

void sub_107810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v28 = sub_2440(&qword_1C5800, &unk_16F510);
  v29 = sub_4348(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_887C();
  sub_A9074();
  __chkstk_darwin(v32);
  sub_76B1C();
  __chkstk_darwin(v33);
  sub_5E160();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  sub_2440(&qword_1C6078, &unk_172520);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1731B0;
  sub_38B4C();
  sub_10E2CC(v38, v39);
  v40 = sub_16D5CC();
  sub_76A04(v36);
  if (v41)
  {
    sub_5CFC8(v36, &qword_1C5800, &unk_16F510);
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
  }

  else
  {
    *(v37 + 72) = v40;
    sub_9910((v37 + 48));
    sub_76AEC();
    (*(v42 + 32))();
  }

  sub_38B4C();
  *(v37 + 80) = 0xD000000000000016;
  *(v37 + 88) = v43;
  v44 = v27(0);
  sub_10E2F0(&qword_1C5800, &unk_16F510, v44[5]);
  sub_76A04(v23);
  if (v41)
  {
    sub_5CFC8(v23, &qword_1C5800, &unk_16F510);
    *(v37 + 96) = 0u;
    *(v37 + 112) = 0u;
  }

  else
  {
    *(v37 + 120) = v40;
    sub_9910((v37 + 96));
    sub_76AEC();
    v46 = *(v45 + 32);
    sub_10E31C();
    v47();
  }

  sub_10DF00();
  *(v37 + 128) = v48;
  *(v37 + 136) = v49;
  sub_7B09C(v20 + v44[6], v22, &qword_1C5800, &unk_16F510);
  sub_76A04(v22);
  if (v41)
  {
    sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
    *(v37 + 144) = 0u;
    *(v37 + 160) = 0u;
  }

  else
  {
    *(v37 + 168) = v40;
    sub_9910((v37 + 144));
    sub_76AEC();
    v51 = *(v50 + 32);
    sub_77394();
    v52();
  }

  sub_10E244();
  sub_10E2A8(v53);
  if (v22)
  {
    v54 = sub_16D4EC();
    v55 = v22;
  }

  else
  {
    v54 = sub_76C6C();
    *(v37 + 200) = 0;
    *(v37 + 208) = 0;
  }

  *(v37 + 192) = v55;
  *(v37 + 216) = v54;
  strcpy((v37 + 224), "lowConfidence");
  *(v37 + 238) = -4864;
  *(v37 + 240) = *(v20 + v44[8]);
  *(v37 + 264) = &type metadata for Bool;
  *(v37 + 272) = 1953066613;
  *(v37 + 280) = 0xE400000000000000;
  sub_7B09C(v20 + v44[9], v21, &qword_1C5800, &unk_16F510);
  sub_76A04(v21);
  if (v41)
  {

    sub_5CFC8(v21, &qword_1C5800, &unk_16F510);
    *(v37 + 288) = 0u;
    *(v37 + 304) = 0u;
  }

  else
  {
    *(v37 + 312) = v40;
    sub_9910((v37 + 288));
    sub_76AEC();
    v57 = *(v56 + 32);
    sub_775E4();
    v58();
  }

  sub_10E308();
  *(v37 + 320) = v59;
  *(v37 + 328) = v60;
  sub_76D40(v44[10]);
  if (v62)
  {
    v63 = 0;
    *(v37 + 344) = 0;
    *(v37 + 352) = 0;
    v64 = 0;
  }

  else
  {
    v64 = *v61;
    v63 = &type metadata for Double;
  }

  *(v37 + 336) = v64;
  *(v37 + 360) = v63;
  sub_45924();
}

void sub_107C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v24;
  a20 = v25;
  v26 = sub_2440(&qword_1C5800, &unk_16F510);
  v27 = sub_4348(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v30);
  sub_10E258();
  __chkstk_darwin(v31);
  sub_5E160();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  sub_2440(&qword_1C6078, &unk_172520);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1731E0;
  sub_38B4C();
  *(v36 + 32) = 0xD000000000000016;
  *(v36 + 40) = v37;
  sub_77394();
  sub_7B09C(v38, v39, v40, &unk_16F510);
  v41 = sub_16D5CC();
  sub_76A04(v34);
  if (v42)
  {
    sub_5CFC8(v34, &qword_1C5800, &unk_16F510);
    *(v35 + 48) = 0u;
    *(v35 + 64) = 0u;
  }

  else
  {
    *(v35 + 72) = v41;
    sub_9910((v35 + 48));
    sub_76AEC();
    v44 = *(v43 + 32);
    sub_77394();
    v45();
  }

  sub_38B4C();
  *(v35 + 80) = 0xD000000000000016;
  *(v35 + 88) = v46;
  v47 = type metadata accessor for WellnessLoggingHeightParameters(0);
  sub_10E2F0(&qword_1C5800, &unk_16F510, v47[5]);
  sub_76A04(v23);
  if (v42)
  {
    sub_5CFC8(v23, &qword_1C5800, &unk_16F510);
    *(v35 + 96) = 0u;
    *(v35 + 112) = 0u;
  }

  else
  {
    *(v35 + 120) = v41;
    sub_9910((v35 + 96));
    sub_76AEC();
    v49 = *(v48 + 32);
    sub_10E31C();
    v50();
  }

  sub_10DF00();
  *(v35 + 128) = v51;
  *(v35 + 136) = v52;
  sub_7B09C(v21 + v47[6], v22, &qword_1C5800, &unk_16F510);
  sub_76A04(v22);
  if (v42)
  {
    sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
    *(v35 + 144) = 0u;
    *(v35 + 160) = 0u;
  }

  else
  {
    *(v35 + 168) = v41;
    sub_9910((v35 + 144));
    sub_76AEC();
    v54 = *(v53 + 32);
    sub_76E28();
    v55();
  }

  *(v35 + 176) = 0x746867696568;
  *(v35 + 184) = 0xE600000000000000;
  v56 = *(v21 + v47[7]);
  if (v56)
  {
    sub_16D2FC();
    v57 = v56;
  }

  else
  {
    sub_76C6C();
    *(v35 + 200) = 0;
    *(v35 + 208) = 0;
  }

  *(v35 + 192) = v57;
  sub_10E244();
  *(v35 + 216) = v58;
  *(v35 + 224) = v59;
  *(v35 + 232) = 0xEA00000000006574;
  v60 = *(v21 + v47[8]);
  if (v60)
  {
    v61 = sub_16D4EC();
    v62 = v60;
  }

  else
  {
    v61 = sub_76C6C();
    *(v35 + 248) = 0;
    *(v35 + 256) = 0;
  }

  *(v35 + 240) = v62;
  *(v35 + 264) = v61;
  *(v35 + 272) = 1953066613;
  *(v35 + 280) = 0xE400000000000000;
  sub_7B09C(v21 + v47[9], v20, &qword_1C5800, &unk_16F510);
  sub_76A04(v20);
  if (v42)
  {

    sub_5CFC8(v20, &qword_1C5800, &unk_16F510);
    *(v35 + 288) = 0u;
    *(v35 + 304) = 0u;
  }

  else
  {
    *(v35 + 312) = v41;
    sub_9910((v35 + 288));
    sub_76AEC();
    v64 = *(v63 + 32);
    sub_77590();
    v65();
  }

  sub_45924();
}

uint64_t sub_108000()
{
  v1 = sub_10E3C4();
  sub_4348(v1);
  v3 = *(v2 + 64);
  sub_433C();
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  sub_2440(&qword_1C6078, &unk_172520);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1712E0;
  sub_38B4C();
  *(v8 + 32) = 0xD000000000000010;
  *(v8 + 40) = v9;
  sub_775E4();
  sub_7B09C(v10, v11, v12, &unk_16F510);
  v13 = sub_16D5CC();
  sub_76A04(v6);
  if (v14)
  {
    sub_5CFC8(v6, &qword_1C5800, &unk_16F510);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v13;
    sub_9910((v7 + 48));
    sub_76AEC();
    v16 = *(v15 + 32);
    sub_775E4();
    v17();
  }

  sub_38B4C();
  *(v7 + 80) = 0xD000000000000012;
  *(v7 + 88) = v18;
  v19 = *(v0 + *(type metadata accessor for WellnessLoggingLogMedAsScheduledConfirmationParameters(0) + 20));
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 96) = v19;
  return v7;
}

void sub_1081A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_2440(&qword_1C5800, &unk_16F510);
  v28 = sub_4348(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_887C();
  sub_A9074();
  __chkstk_darwin(v31);
  sub_10E258();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  sub_2440(&qword_1C6078, &unk_172520);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_176950;
  sub_38B4C();
  *(v36 + 32) = 0xD000000000000020;
  *(v36 + 40) = v37;
  *(v36 + 48) = *v20;
  *(v36 + 72) = &type metadata for Bool;
  *(v36 + 80) = 0x6E69577473726966;
  *(v36 + 88) = 0xEF657A6953776F64;
  if (*(v20 + 16))
  {
    v38 = 0;
    *(v35 + 104) = 0;
    *(v35 + 112) = 0;
    v39 = 0;
  }

  else
  {
    v39 = *(v20 + 8);
    v38 = &type metadata for Double;
  }

  *(v35 + 96) = v39;
  *(v35 + 120) = v38;
  strcpy((v35 + 128), "isConclusion");
  *(v35 + 141) = 0;
  *(v35 + 142) = -5120;
  *(v35 + 144) = *(v20 + 17);
  *(v35 + 168) = &type metadata for Bool;
  strcpy((v35 + 176), "isFirstWindow");
  *(v35 + 190) = -4864;
  *(v35 + 192) = *(v20 + 18);
  *(v35 + 216) = &type metadata for Bool;
  strcpy((v35 + 224), "isLastWindow");
  *(v35 + 237) = 0;
  *(v35 + 238) = -5120;
  *(v35 + 240) = *(v20 + 19);
  *(v35 + 264) = &type metadata for Bool;
  *(v35 + 272) = 0xD000000000000016;
  *(v35 + 280) = 0x800000000017E140;
  *(v35 + 288) = *(v20 + 20);
  *(v35 + 312) = &type metadata for Bool;
  *(v35 + 320) = 0x736D657469;
  *(v35 + 328) = 0xE500000000000000;
  v40 = *(v20 + 24);
  sub_2440(&qword_1C82F8, &unk_173BF0);
  *(v35 + 336) = v40;
  sub_38B4C();
  *(v35 + 360) = v41;
  *(v35 + 368) = 0xD000000000000010;
  *(v35 + 376) = v42;
  v43 = v26(0);
  sub_10E2F0(&qword_1C5800, &unk_16F510, v43[11]);
  v44 = sub_16D5CC();
  sub_4B544(v34);
  if (v45)
  {

    sub_5CFC8(v34, &qword_1C5800, &unk_16F510);
    *(v35 + 384) = 0u;
    *(v35 + 400) = 0u;
  }

  else
  {
    *(v35 + 408) = v44;
    sub_9910((v35 + 384));
    sub_5DE54(v44);
    (*(v46 + 32))();
  }

  *(v35 + 416) = 0x656D695464656DLL;
  *(v35 + 424) = 0xE700000000000000;
  sub_7B09C(v20 + v43[12], v22, &qword_1C5800, &unk_16F510);
  sub_4B544(v22);
  if (v45)
  {
    sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
    *(v35 + 432) = 0u;
    *(v35 + 448) = 0u;
  }

  else
  {
    *(v35 + 456) = v44;
    sub_9910((v35 + 432));
    sub_5DE54(v44);
    (*(v47 + 32))();
  }

  sub_38B4C();
  *(v35 + 464) = 0xD000000000000013;
  *(v35 + 472) = v48;
  sub_76D40(v43[13]);
  if (v50)
  {
    v51 = 0;
    *(v35 + 488) = 0;
    *(v35 + 496) = 0;
    v52 = 0;
  }

  else
  {
    v52 = *v49;
    v51 = &type metadata for Double;
  }

  *(v35 + 480) = v52;
  *(v35 + 504) = v51;
  *(v35 + 512) = 0xD000000000000011;
  *(v35 + 520) = 0x800000000017FA40;
  sub_76D40(v43[14]);
  if (v54)
  {
    v55 = 0;
    *(v35 + 536) = 0u;
    v56 = 0;
  }

  else
  {
    v56 = *v53;
    v55 = &type metadata for Double;
  }

  *(v35 + 528) = v56;
  *(v35 + 552) = v55;
  sub_38B4C();
  *(v35 + 560) = 0xD000000000000018;
  *(v35 + 568) = v57;
  sub_7B09C(v20 + v43[15], v21, &qword_1C5800, &unk_16F510);
  sub_4B544(v21);
  if (v45)
  {
    sub_5CFC8(v21, &qword_1C5800, &unk_16F510);
    *(v35 + 576) = 0u;
    *(v35 + 592) = 0u;
  }

  else
  {
    *(v35 + 600) = v44;
    sub_9910((v35 + 576));
    sub_5DE54(v44);
    (*(v58 + 32))();
  }

  *(v35 + 608) = 0x6574496C61746F74;
  *(v35 + 616) = 0xEA0000000000736DLL;
  v59 = (v20 + v43[16]);
  if (v59[1])
  {
    v60 = 0;
    *(v35 + 632) = 0u;
    v61 = 0;
  }

  else
  {
    v61 = *v59;
    v60 = &type metadata for Double;
  }

  *(v35 + 624) = v61;
  *(v35 + 648) = v60;
  *(v35 + 656) = 0x6953776F646E6977;
  *(v35 + 664) = 0xEA0000000000657ALL;
  sub_76D40(v43[17]);
  if (v63)
  {
    v64 = 0;
    *(v35 + 680) = 0u;
    v65 = 0;
  }

  else
  {
    v65 = *v62;
    v64 = &type metadata for Double;
  }

  *(v35 + 672) = v65;
  *(v35 + 696) = v64;
  sub_45924();
}

uint64_t sub_108718()
{
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  v4 = sub_4348(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v7);
  sub_10E258();
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  sub_2440(&qword_1C6078, &unk_172520);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1731E0;
  sub_38B4C();
  *(v12 + 32) = 0xD000000000000016;
  *(v12 + 40) = v13;
  sub_77394();
  sub_7B09C(v14, v15, v16, &unk_16F510);
  v17 = sub_16D5CC();
  sub_76A04(v10);
  if (v18)
  {
    sub_5CFC8(v10, &qword_1C5800, &unk_16F510);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v17;
    sub_9910((v11 + 48));
    sub_76AEC();
    v20 = *(v19 + 32);
    sub_77394();
    v21();
  }

  sub_10DF00();
  *(v11 + 80) = v22;
  *(v11 + 88) = v23;
  v24 = type metadata accessor for WellnessLoggingMenstruationParameters(0);
  sub_7B09C(v1 + v24[5], v2, &qword_1C5800, &unk_16F510);
  sub_76A04(v2);
  if (v18)
  {
    sub_5CFC8(v2, &qword_1C5800, &unk_16F510);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v17;
    sub_9910((v11 + 96));
    sub_76AEC();
    v26 = *(v25 + 32);
    sub_76E28();
    v27();
  }

  *(v11 + 128) = 1702125924;
  *(v11 + 136) = 0xE400000000000000;
  v28 = *(v1 + v24[6]);
  if (v28)
  {
    sub_16D4EC();
    v29 = v28;
  }

  else
  {
    sub_76C6C();
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  *(v11 + 144) = v29;
  sub_38B4C();
  *(v11 + 168) = v30;
  *(v11 + 176) = 0xD000000000000017;
  *(v11 + 184) = v31;
  *(v11 + 192) = *(v1 + v24[7]);
  *(v11 + 216) = &type metadata for Bool;
  *(v11 + 224) = 2003790950;
  *(v11 + 232) = 0xE400000000000000;
  sub_76D40(v24[8]);
  if (v33)
  {
    v34 = 0;
    *(v11 + 248) = 0;
    *(v11 + 256) = 0;
    v35 = 0;
  }

  else
  {
    v35 = *v32;
    v34 = &type metadata for Double;
  }

  *(v11 + 240) = v35;
  *(v11 + 264) = v34;
  *(v11 + 272) = 0xD000000000000016;
  *(v11 + 280) = 0x800000000017F8D0;
  sub_7B09C(v1 + v24[9], v0, &qword_1C5800, &unk_16F510);
  sub_76A04(v0);
  if (v18)
  {

    sub_5CFC8(v0, &qword_1C5800, &unk_16F510);
    *(v11 + 288) = 0u;
    *(v11 + 304) = 0u;
  }

  else
  {
    *(v11 + 312) = v17;
    sub_9910((v11 + 288));
    sub_76AEC();
    v37 = *(v36 + 32);
    sub_77590();
    v38();
  }

  return v11;
}

uint64_t sub_108A70()
{
  v2 = sub_10E3C4();
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  sub_10E298();
  sub_2440(&qword_1C6078, &unk_172520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_16F2F0;
  sub_38B4C();
  v9 = sub_10E350(v7, v8);
  *(v9 + 48) = v10;
  sub_10E33C();
  *(v11 + 72) = v13;
  *(v11 + 80) = v12;
  sub_10E328();
  *(v14 + 88) = v15;
  *(v14 + 96) = *(v1 + 1);
  sub_10E37C();
  *(v16 + 120) = v18;
  *(v16 + 128) = v17;
  sub_10E390();
  *(v19 + 136) = v20;
  v21 = *(type metadata accessor for WellnessLoggingPhoneMedicationQueryingErrorParameters(0) + 24);
  sub_77590();
  sub_7B09C(v22, v23, v24, &unk_16F510);
  v25 = sub_16D5CC();
  if (sub_369C(v0, 1, v25) == 1)
  {
    sub_5CFC8(v0, &qword_1C5800, &unk_16F510);
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
  }

  else
  {
    *(v6 + 168) = v25;
    sub_9910((v6 + 144));
    sub_5DE54(v25);
    (*(v26 + 32))();
  }

  return v6;
}

uint64_t sub_108C08()
{
  v2 = sub_10E3C4();
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  sub_10E298();
  sub_2440(&qword_1C6078, &unk_172520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1731B0;
  sub_38B4C();
  v9 = sub_10E350(v7, v8);
  *(v9 + 48) = v10;
  sub_38B4C();
  *(v11 + 72) = v13;
  *(v11 + 80) = v12;
  *(v11 + 88) = v14;
  *(v11 + 96) = v1[1];
  sub_38B4C();
  *(v16 + 120) = v17;
  *(v16 + 128) = v15 + 9;
  *(v16 + 136) = v18;
  *(v16 + 144) = v1[2];
  sub_10E33C();
  *(v19 + 168) = v21;
  *(v19 + 176) = v20;
  sub_10E328();
  *(v22 + 184) = v23;
  *(v22 + 192) = v1[3];
  *(v22 + 216) = v24;
  strcpy((v22 + 224), "medDoesntExist");
  *(v22 + 239) = -18;
  *(v22 + 240) = v1[4];
  sub_38B4C();
  *(v26 + 264) = v27;
  *(v26 + 272) = v25 + 3;
  *(v26 + 280) = v28;
  *(v26 + 288) = v1[5];
  sub_10E37C();
  *(v29 + 312) = v31;
  *(v29 + 320) = v30;
  sub_10E390();
  *(v32 + 328) = v33;
  v34 = *(type metadata accessor for WellnessLoggingWatchMedicationQueryingErrorParameters(0) + 40);
  sub_77590();
  sub_7B09C(v35, v36, v37, &unk_16F510);
  v38 = sub_16D5CC();
  if (sub_369C(v0, 1, v38) == 1)
  {
    sub_5CFC8(v0, &qword_1C5800, &unk_16F510);
    *(v6 + 336) = 0u;
    *(v6 + 352) = 0u;
  }

  else
  {
    *(v6 + 360) = v38;
    sub_9910((v6 + 336));
    sub_5DE54(v38);
    (*(v39 + 32))();
  }

  return v6;
}

void sub_108E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v28 = sub_2440(&qword_1C5800, &unk_16F510);
  v29 = sub_4348(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_887C();
  sub_A9074();
  __chkstk_darwin(v32);
  sub_76B1C();
  __chkstk_darwin(v33);
  sub_5E160();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  sub_2440(&qword_1C6078, &unk_172520);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1731E0;
  sub_38B4C();
  sub_10E2CC(v38, v39);
  v40 = sub_16D5CC();
  sub_76A04(v36);
  if (v41)
  {
    sub_5CFC8(v36, &qword_1C5800, &unk_16F510);
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
  }

  else
  {
    *(v37 + 72) = v40;
    sub_9910((v37 + 48));
    sub_76AEC();
    (*(v42 + 32))();
  }

  sub_38B4C();
  *(v37 + 80) = 0xD000000000000016;
  *(v37 + 88) = v43;
  v44 = v27(0);
  sub_10E2F0(&qword_1C5800, &unk_16F510, v44[5]);
  sub_76A04(v23);
  if (v41)
  {
    sub_5CFC8(v23, &qword_1C5800, &unk_16F510);
    *(v37 + 96) = 0u;
    *(v37 + 112) = 0u;
  }

  else
  {
    *(v37 + 120) = v40;
    sub_9910((v37 + 96));
    sub_76AEC();
    v46 = *(v45 + 32);
    sub_10E31C();
    v47();
  }

  sub_10DF00();
  *(v37 + 128) = v48;
  *(v37 + 136) = v49;
  sub_7B09C(v20 + v44[6], v22, &qword_1C5800, &unk_16F510);
  sub_76A04(v22);
  if (v41)
  {
    sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
    *(v37 + 144) = 0u;
    *(v37 + 160) = 0u;
  }

  else
  {
    *(v37 + 168) = v40;
    sub_9910((v37 + 144));
    sub_76AEC();
    v51 = *(v50 + 32);
    sub_77394();
    v52();
  }

  sub_10E244();
  sub_10E2A8(v53);
  if (v22)
  {
    v54 = sub_16D4EC();
    v55 = v22;
  }

  else
  {
    v54 = sub_76C6C();
    *(v37 + 200) = 0;
    *(v37 + 208) = 0;
  }

  *(v37 + 192) = v55;
  *(v37 + 216) = v54;
  *(v37 + 224) = 1953066613;
  *(v37 + 232) = 0xE400000000000000;
  sub_7B09C(v20 + v44[8], v21, &qword_1C5800, &unk_16F510);
  sub_76A04(v21);
  if (v41)
  {

    sub_5CFC8(v21, &qword_1C5800, &unk_16F510);
    *(v37 + 240) = 0u;
    *(v37 + 256) = 0u;
  }

  else
  {
    *(v37 + 264) = v40;
    sub_9910((v37 + 240));
    sub_76AEC();
    v57 = *(v56 + 32);
    sub_775E4();
    v58();
  }

  sub_10E308();
  *(v37 + 272) = v59;
  *(v37 + 280) = v60;
  sub_76D40(v44[9]);
  if (v62)
  {
    v63 = 0;
    *(v37 + 296) = 0;
    *(v37 + 304) = 0;
    v64 = 0;
  }

  else
  {
    v64 = *v61;
    v63 = &type metadata for Double;
  }

  *(v37 + 288) = v64;
  *(v37 + 312) = v63;
  sub_45924();
}

uint64_t sub_1091CC()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_8BC0();
  v6 = type metadata accessor for WellnessLoggingAskForValueParameters(0);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v0[5] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_109270()
{
  sub_C9EC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = sub_16D5CC();
  sub_10DF8C(v2);
  sub_208C0(*(v3 + 16));
  sub_16E23C();

  sub_214C(v1, 0, 1, v4);
  sub_8640(v1, v2);
  v5 = sub_107288();
  sub_10E370(v5);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v6;
  v7 = swift_task_alloc();
  v8 = sub_10E364(v7);
  *v8 = v9;
  sub_10DFA8(v8);
  v10 = sub_10DFDC(27);

  return v12(v10);
}

uint64_t sub_10937C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10949C()
{
  sub_386A8();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_10DF18();

  sub_5D948();
  v5 = v0[9];

  return v4(v5);
}

uint64_t sub_109520()
{
  sub_386A8();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_10DF18();

  sub_C9BC();
  v5 = v0[8];

  return v4();
}

uint64_t sub_1095A0()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessLoggingAskForValueParameters(v3);
  sub_4348(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_109614()
{
  sub_386A8();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  sub_16D5CC();
  sub_8AB4();
  sub_214C(v4, v5, v6, v7);
  v3(v1);
  sub_76E1C();
  v8 = sub_107288();
  sub_10E370(v8);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v10 = sub_10E364(v9);
  *v10 = v11;
  sub_769B4(v10);
  v12 = sub_76C50(27);

  return v13(v12);
}

uint64_t sub_1096EC()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10980C()
{
  sub_8A88();
  v1 = *(v0 + 40);
  sub_10DF18();

  sub_5D948();
  v3 = *(v0 + 72);

  return v2(v3);
}

uint64_t sub_109874()
{
  sub_8A88();
  v1 = *(v0 + 40);
  sub_10DF18();

  sub_C9BC();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1098D8()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessLoggingBloodPressureParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_109A44()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_109B64()
{
  sub_8A88();
  sub_10E114();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_109BC0()
{
  sub_8A88();
  sub_10E114();

  sub_76ADC();

  return v0();
}

uint64_t sub_109C1C()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingDistanceCyclingParameters(v4);
  sub_76ACC(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_109D60()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_109E80()
{
  sub_8A88();
  sub_10E140();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_109EDC()
{
  sub_8A88();
  sub_10E140();

  sub_76ADC();

  return v0();
}

uint64_t sub_109F38()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingDistanceWalkingRunningParameters(v4);
  sub_76ACC(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10A07C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10A19C()
{
  sub_8A88();
  sub_10E0E8();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10A1F8()
{
  sub_8A88();
  sub_10E0E8();

  sub_76ADC();

  return v0();
}

uint64_t sub_10A254()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingDistanceWheelchairParameters(v4);
  sub_76ACC(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10A398()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10A4B8()
{
  sub_8A88();
  sub_10E0BC();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10A514()
{
  sub_8A88();
  sub_10E0BC();

  sub_76ADC();

  return v0();
}

uint64_t sub_10A570()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingFlightsClimbedParameters(v4);
  sub_76ACC(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10A6B4()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10A7D4()
{
  sub_8A88();
  sub_10E090();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10A830()
{
  sub_8A88();
  sub_10E090();

  sub_76ADC();

  return v0();
}

uint64_t sub_10A88C()
{
  sub_8A88();
  *(v0 + 80) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = type metadata accessor for WellnessLoggingGenericDatatypeParameters(0);
  *(v0 + 32) = v4;
  sub_4348(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10AA24()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10AB44()
{
  sub_8A88();
  *(v0 + 80) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = type metadata accessor for WellnessLoggingGenericDatatypeParameters(0);
  *(v0 + 32) = v4;
  sub_4348(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10ACDC()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10ADFC()
{
  sub_8A88();
  sub_10E048();

  sub_5D948();
  v3 = *(v1 + 72);

  return v2(v3);
}

uint64_t sub_10AE64()
{
  sub_8A88();
  sub_10E048();

  sub_C9BC();
  v3 = *(v1 + 64);

  return v2();
}

uint64_t sub_10AEC8()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessLoggingHeightParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10B018()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10B138()
{
  sub_8A88();
  sub_10E198();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10B194()
{
  sub_8A88();
  sub_10E198();

  sub_76ADC();

  return v0();
}

uint64_t sub_10B1F0()
{
  sub_8A88();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 88) = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64);
  *(v0 + 32) = sub_8BC0();
  v7 = type metadata accessor for WellnessLoggingLogMedAsScheduledConfirmationParameters(0);
  sub_76ACC(v7);
  v9 = *(v8 + 64);
  *(v0 + 48) = sub_8BC0();
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10B298()
{
  sub_7734C();
  v25 = v1;
  sub_76D68();
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 88);
  v6 = sub_16D5CC();
  v7 = 1;
  sub_8AB4();
  sub_214C(v8, v9, v10, v6);
  *(v2 + *(v3 + 20)) = v5;
  if (*(v4 + 24))
  {
    v11 = *(v0 + 32);
    v12 = *(*(v0 + 24) + 16);
    v13 = *(v4 + 24);

    sub_16E23C();

    v7 = 0;
  }

  v14 = *(v0 + 48);
  v15 = *(v0 + 32);
  sub_214C(v15, v7, 1, v6);
  sub_8640(v15, v14);
  v16 = sub_108000();
  sub_76D00(v16);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v24 = v17;
  v18 = swift_task_alloc();
  v19 = sub_76D0C(v18);
  *v19 = v20;
  v19[1] = sub_10B3EC;
  v21 = *(v0 + 16);
  v22 = sub_10DFDC(45);

  return v24(v22);
}

uint64_t sub_10B3EC()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10B50C()
{
  sub_386A8();
  sub_10E018();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10B580()
{
  sub_386A8();
  sub_10E018();

  sub_76ADC();

  return v0();
}

uint64_t sub_10B5F4()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingMenstruationParameters(v4);
  sub_76ACC(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_10DFBC();
  sub_10DF8C(v10);
  sub_10DF40(v11[5]);
  sub_10DF40(v11[9]);
  *(v10 + v11[6]) = 0;
  *(v10 + v11[7]) = v13;
  sub_76C60(v11[8]);
  *(v14 + 8) = 1;
  v12(v10);
  sub_76E1C();
  v15 = sub_108718();
  sub_76D00(v15);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v29 = v16;
  v17 = swift_task_alloc();
  v18 = sub_76D0C(v17);
  *v18 = v19;
  sub_769B4(v18);
  sub_76C50(28);
  sub_3E254();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10);
}

uint64_t sub_10B760()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10B880()
{
  sub_8A88();
  sub_10E1F0();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10B8DC()
{
  sub_8A88();
  sub_10E1F0();

  sub_76ADC();

  return v0();
}

uint64_t sub_10B938()
{
  sub_8A88();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 16) = v3;
  *(v0 + 97) = v4;
  *(v0 + 96) = v5;
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  *(v0 + 40) = sub_8BC0();
  v9 = type metadata accessor for WellnessLoggingPhoneMedicationQueryingErrorParameters(0);
  *(v0 + 48) = v9;
  sub_4348(v9);
  v11 = *(v10 + 64);
  *(v0 + 56) = sub_8BC0();
  v12 = sub_17960();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = *(v10 + 56);
  v12 = *(v10 + 32);
  v13 = *(v10 + 97);
  v14 = *(v10 + 96);
  v15 = *(*(v10 + 48) + 24);
  v16 = sub_16D5CC();
  v17 = 1;
  sub_10DF8C(&v11[v15]);
  *v11 = v14;
  v11[1] = v13;
  if (v12)
  {
    v18 = *(v10 + 32);
    v19 = *(v10 + 40);
    v20 = *(v10 + 24);
    sub_16E23C();
    v17 = 0;
  }

  v21 = *(v10 + 56);
  v22 = *(v10 + 40);
  sub_214C(v22, v17, 1, v16);
  sub_8640(v22, &v11[v15]);
  *(v10 + 64) = sub_108A70();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v34 = v23;
  v24 = swift_task_alloc();
  *(v10 + 72) = v24;
  *v24 = v10;
  sub_10DFA8(v24);
  sub_76C50(44);
  sub_3E254();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10);
}

uint64_t sub_10BB10()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *(v6 + 64);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10BC30()
{
  sub_386A8();
  sub_10DFE8();

  sub_5D948();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_10BCAC()
{
  sub_386A8();
  sub_10DFE8();

  sub_C9BC();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_10BD24()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingPushCountParameters(v4);
  sub_76ACC(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10BE68()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10BF88()
{
  sub_8A88();
  sub_10E16C();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10BFE4()
{
  sub_8A88();
  sub_10E16C();

  sub_76ADC();

  return v0();
}

uint64_t sub_10C040()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10C0F8;

  return v4(0xD000000000000014, 0x800000000017F870, &_swiftEmptyArrayStorage);
}

uint64_t sub_10C0F8()
{
  sub_8A88();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_C990();
  *v6 = v5;

  sub_5D948();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_10C1E8()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessLoggingWeightParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10C35C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10C47C()
{
  sub_8A88();
  sub_10E1C4();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10C4D8()
{
  sub_8A88();
  sub_10E1C4();

  sub_76ADC();

  return v0();
}

void sub_10C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_16D63C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v29 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v29);
  v31 = *(v30 + 64);
  sub_433C();
  __chkstk_darwin(v32);
  sub_7B09C(v25, &a9 - v33, &qword_1C57F8, &unk_172510);
  v34 = *(v27 + 16);
  sub_775E4();
  v35();
  sub_16D56C();
  (*(v27 + 8))(v23, v26);
  sub_5CFC8(v25, &qword_1C57F8, &unk_172510);
  sub_45924();
}

uint64_t sub_10C740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_5DE54(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10C964()
{
  sub_76D8C();
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = sub_76D9C();

    return sub_369C(v5, v6, v7);
  }

  else
  {
    v9 = *(v0 + *(v2 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10CA2C()
{
  sub_76BF4();
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  result = sub_436C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_76BE0();

    return sub_214C(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }

  return result;
}

void sub_10CAC4()
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10CB7C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 24);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_2440(&qword_1C5800, &unk_16F510);
    v6 = sub_10E28C(*(a3 + 44));

    return sub_369C(v6, v7, v8);
  }
}

void sub_10CC20()
{
  sub_A78A8();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2440(&qword_1C5800, &unk_16F510);
    v5 = sub_10E28C(*(v4 + 44));

    sub_214C(v5, v6, v0, v7);
  }
}

uint64_t sub_10CCA4()
{
  sub_7B288();
  sub_10E2C0();
  if (!(!v2 & v1))
  {
    sub_10D5C8(319, &unk_1C8368, type metadata accessor for WellnessMedicationDialogObject, &type metadata accessor for Array);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_10DF60();
    sub_10D5C8(319, v5, v6, &type metadata accessor for Optional);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_7740C();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_10CDE4()
{
  sub_A78A8();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);

  return sub_369C(v1, v0, v2);
}

uint64_t sub_10CE48()
{
  sub_A78A8();
  sub_2440(&qword_1C5800, &unk_16F510);
  v0 = sub_76BE0();

  return sub_214C(v0, v1, v2, v3);
}

void sub_10CE90()
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10CF40()
{
  sub_76D8C();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) != v0)
  {
    return sub_76A24(*(v1 + 32));
  }

  v4 = sub_76D9C();

  return sub_369C(v4, v5, v6);
}

uint64_t sub_10CFE8()
{
  sub_76BF4();
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  result = sub_436C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_76BE0();

    return sub_214C(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 32)) = v0;
  }

  return result;
}

uint64_t sub_10D080()
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_7B288();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_10D5C8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_10D1CC()
{
  sub_76D8C();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) != v0)
  {
    return sub_76A24(*(v1 + 24));
  }

  v4 = sub_76D9C();

  return sub_369C(v4, v5, v6);
}

uint64_t sub_10D274()
{
  sub_76BF4();
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  result = sub_436C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_76BE0();

    return sub_214C(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }

  return result;
}

uint64_t sub_10D30C()
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10D5C8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_7B288();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_10D480()
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10D5C8(319, &unk_1C7A30, &type metadata accessor for DialogPersonHeight, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_10D5C8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_10D5C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10D654()
{
  sub_10DF60();
  sub_10D5C8(319, v1, v2, &type metadata accessor for Optional);
  sub_10E2C0();
  if (!(!v4 & v3))
  {
    sub_10E078();
    sub_10D5C8(319, v5, v6, &type metadata accessor for Optional);
    if (v8 > 0x3F)
    {
      return v7;
    }

    else
    {
      sub_7B288();
      sub_10E2C0();
      if (!(!v4 & v3))
      {
        sub_7740C();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_10D81C()
{
  sub_76BF4();
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  result = sub_436C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_76BE0();

    return sub_214C(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0;
  }

  return result;
}

uint64_t sub_10D8B4()
{
  sub_10DF60();
  sub_10D5C8(319, v1, v2, &type metadata accessor for Optional);
  sub_10E2C0();
  if (!(!v4 & v3))
  {
    sub_10E078();
    sub_10D5C8(319, v5, v6, &type metadata accessor for Optional);
    if (v8 > 0x3F)
    {
      return v7;
    }

    else
    {
      sub_7B288();
      sub_10E2C0();
      if (!(!v4 & v3))
      {
        sub_7740C();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_10D9F4(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2440(&qword_1C5800, &unk_16F510);
    v8 = sub_10E28C(*(a3 + 24));

    return sub_369C(v8, v9, v10);
  }
}

void sub_10DA98()
{
  sub_A78A8();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v4 = v2;
    sub_2440(&qword_1C5800, &unk_16F510);
    v5 = sub_10E28C(*(v4 + 24));

    sub_214C(v5, v6, v0, v7);
  }
}

void sub_10DB18()
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10DBD8(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2440(&qword_1C5800, &unk_16F510);
    v8 = sub_10E28C(*(a3 + 40));

    return sub_369C(v8, v9, v10);
  }
}

void sub_10DC7C()
{
  sub_A78A8();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v4 = v2;
    sub_2440(&qword_1C5800, &unk_16F510);
    v5 = sub_10E28C(*(v4 + 40));

    sub_214C(v5, v6, v0, v7);
  }
}

void sub_10DCFC()
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10DE08(uint64_t a1)
{
  sub_214C(v1, 1, 1, a1);
  sub_214C(v1 + v2[5], 1, 1, a1);
  sub_214C(v1 + v2[6], 1, 1, a1);
  sub_214C(v1 + v2[9], 1, 1, a1);
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = v3;
  v5 = v1 + v2[10];
  *v5 = 0;
  *(v5 + 8) = 1;
  return v1;
}

uint64_t sub_10DEA0()
{
  sub_214C(v0, 1, 1, v1);
  sub_214C(v0 + *(v2 + 20), 1, 1, v1);
  v3 = v0 + *(v2 + 24);

  return sub_214C(v3, 1, 1, v1);
}

uint64_t sub_10DF18()
{

  return sub_10C740(v0, type metadata accessor for WellnessLoggingAskForValueParameters);
}

uint64_t sub_10DF40@<X0>(uint64_t a1@<X8>)
{

  return sub_214C(v1 + a1, 1, 1, v2);
}

uint64_t sub_10DF78(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  return 0;
}

uint64_t sub_10DF8C(uint64_t a1)
{

  return sub_214C(a1, 1, 1, v1);
}

uint64_t sub_10DFA8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 16);
  return result;
}

uint64_t sub_10DFBC()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 88);

  return sub_16D5CC();
}

uint64_t sub_10DFE8()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[7];

  return sub_10C740(v4, type metadata accessor for WellnessLoggingPhoneMedicationQueryingErrorParameters);
}

uint64_t sub_10E018()
{
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[6];

  return sub_10C740(v4, type metadata accessor for WellnessLoggingLogMedAsScheduledConfirmationParameters);
}

uint64_t sub_10E048()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);

  return sub_10C740(v3, type metadata accessor for WellnessLoggingGenericDatatypeParameters);
}

uint64_t sub_10E090()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingFlightsClimbedParameters);
}

uint64_t sub_10E0BC()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingDistanceWheelchairParameters);
}

uint64_t sub_10E0E8()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingDistanceWalkingRunningParameters);
}

uint64_t sub_10E114()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingBloodPressureParameters);
}

uint64_t sub_10E140()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingDistanceCyclingParameters);
}

uint64_t sub_10E16C()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingPushCountParameters);
}

uint64_t sub_10E198()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingHeightParameters);
}

uint64_t sub_10E1C4()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingWeightParameters);
}

uint64_t sub_10E1F0()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingMenstruationParameters);
}

void sub_10E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_108E2C(type metadata accessor for WellnessLoggingGenericDatatypeParameters, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10E26C()
{
  v3 = v0 + *(v1 + 36);
  *v3 = 0;
  *(v3 + 8) = v2;
  return v0;
}

void sub_10E2A8(uint64_t a1@<X8>)
{
  *(v1 + 176) = a1;
  *(v1 + 184) = 0xEA00000000006574;
  v4 = *(v2 + *(v3 + 28));
}

uint64_t sub_10E2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v6;
  *(a1 + 40) = a2;

  return sub_7B09C(v2, v4, v3, v5);
}

uint64_t sub_10E2F0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_7B09C(v3 + a3, v4, a1, a2);
}

uint64_t sub_10E350@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD000000000000013;
  *(result + 40) = a2;
  v3 = *v2;
  return result;
}

uint64_t sub_10E3A4()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(v0 + 80);

  return sub_16D5CC();
}

uint64_t sub_10E3C4()
{

  return sub_2440(v0, v1);
}

uint64_t sub_10E3DC()
{
  v1 = sub_16C89C();
  v2 = sub_42F0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v2);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_16DBEC();
  v12 = sub_42F0(v11);
  v44 = v13;
  v45 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2440(&qword_1C6FF0, &unk_1730A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v42 - v20;
  v22 = sub_16C8FC();
  v23 = sub_42F0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_16C88C();
  sub_9AD9C(v30, v21);

  if (sub_369C(v21, 1, v22) == 1)
  {
    sub_10E7F4(v21);
    v31 = sub_16DBBC();
    swift_beginAccess();
    (*(v44 + 16))(v17, v31, v45);
    v32 = *(v4 + 16);
    v32(v10, v0, v1);
    v33 = sub_16DBDC();
    v34 = sub_16E37C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v35 = 136315138;
      v32(v43, v10, v1);
      v36 = sub_16E1EC();
      v38 = v37;
      (*(v4 + 8))(v10, v1);
      v39 = sub_3AB7C(v36, v38, &v46);

      *(v35 + 4) = v39;
      _os_log_impl(&def_259DC, v33, v34, "No user dialog act found in userParse %s", v35, 0xCu);
      sub_2D64(v42);
    }

    else
    {

      (*(v4 + 8))(v10, v1);
    }

    (*(v44 + 8))(v17, v45);
    return 0;
  }

  else
  {
    (*(v25 + 32))(v29, v21, v22);
    v40 = sub_896C0();
    (*(v25 + 8))(v29, v22);
  }

  return v40;
}

uint64_t sub_10E7F4(uint64_t a1)
{
  v2 = sub_2440(&qword_1C6FF0, &unk_1730A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10E85C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 80) = v19;
  *(v8 + 88) = v20;
  *(v8 + 502) = v17;
  *(v8 + 64) = v16;
  *(v8 + 72) = v18;
  *(v8 + 501) = v15;
  *(v8 + 500) = v13;
  *(v8 + 48) = v12;
  *(v8 + 56) = v14;
  *(v8 + 499) = a8;
  *(v8 + 498) = a6;
  *(v8 + 32) = a5;
  *(v8 + 40) = a7;
  *(v8 + 497) = a4;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 496) = a1;
  v9 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_10E990, 0, 0);
}

uint64_t sub_10E990()
{
  v4 = *(v2 + 496);
  if (!v1 & v0)
  {
    if (v4 != 107)
    {
      switch(v4)
      {
        case 147:
          if (qword_1C55E0 != -1)
          {
            sub_1117D0();
          }

          sub_111880();
          *(v2 + 216) = qword_1D72C0;

          v60 = swift_task_alloc();
          *(v2 + 224) = v60;
          *v60 = v2;
          v60[1] = sub_11009C;
          v61 = *(v2 + 72);
          v62 = *(v2 + 80);
          sub_1117F0();
          sub_111864();

          return sub_AE440();
        case 173:
          if (qword_1C55E0 != -1)
          {
            sub_1117D0();
          }

          sub_111880();
          *(v2 + 264) = qword_1D72C0;

          v50 = swift_task_alloc();
          *(v2 + 272) = v50;
          *v50 = v2;
          v50[1] = sub_110480;
          v51 = *(v2 + 80);
          sub_1117F0();
          sub_111864();

          return sub_AFBCC(v52, v53, v54, v55, v56, v57);
        case 174:
          if (qword_1C55E0 != -1)
          {
            sub_1117D0();
          }

          v35 = *(v2 + 501);
          v36 = *(v2 + 500);
          v37 = *(v2 + 499);
          v38 = *(v2 + 498);
          v39 = (v2 + 32);
          if ((*(v2 + 497) & 1) == 0)
          {
            v39 = (v2 + 24);
          }

          v40 = *v39;
          *(v2 + 408) = qword_1D72C0;

          v41 = swift_task_alloc();
          *(v2 + 416) = v41;
          *v41 = v2;
          v41[1] = sub_111050;
          v42 = *(v2 + 48);
          v43 = *(v2 + 56);
          v44 = *(v2 + 40);
          v139 = *(v2 + 80);
          v45 = sub_C98D8(*(v2 + 16));

          return sub_AFD70(v45, v40);
        case 184:
          if (qword_1C55E0 != -1)
          {
            sub_1117D0();
          }

          sub_111880();
          *(v2 + 168) = qword_1D72C0;

          v46 = swift_task_alloc();
          *(v2 + 176) = v46;
          *v46 = v2;
          v46[1] = sub_10FCB8;
          v47 = *(v2 + 72);
          v48 = *(v2 + 80);
          sub_1117F0();
          sub_111864();

          return sub_B1688();
        default:
          if (v4 != 193)
          {
LABEL_20:
            sub_11191C();

            sub_111908();
            sub_111864();

            __asm { BRAA            X2, X16 }
          }

          if (qword_1C55E0 != -1)
          {
            sub_1117D0();
          }

          sub_11189C();
          v5 = *(v2 + 497);
          *(v2 + 184) = qword_1D72C0;

          v6 = swift_task_alloc();
          *(v2 + 192) = v6;
          *v6 = v2;
          sub_11188C(v6);
          v7 = *(v2 + 40);
          v8 = *(v2 + 24);
          sub_111844(*(v2 + 16));
          sub_1118B8();

          return sub_B1A70();
      }
    }

    if (qword_1C55E0 != -1)
    {
      sub_1117D0();
    }

    v59 = *(v2 + 498);
    *(v2 + 424) = qword_1D72C0;
    if (v59)
    {
    }

    else
    {
      v69 = *(v2 + 128);
      sub_1118D8();
      sub_16D5CC();
      v70 = sub_1118AC();
      v71 = sub_369C(v70, 1, v3);
      v72 = *(v2 + 128);
      if (v71 != 1)
      {
        v87 = *(v2 + 88);
        v88 = *(v2 + 32);

        v89 = sub_16D5BC();
        v91 = v90;
        sub_5DE54(v3);
        (*(v92 + 8))(v72, v3);
        v93 = sub_16D2AC();
        sub_8D14(v93);
        sub_16D29C();
        sub_11193C(v89, v91);

        sub_1118F0();
        sub_1118AC();

        sub_16D42C();

        v73 = sub_16D41C();

LABEL_84:
        *(v2 + 432) = v73;
        if ((*(v2 + 499) & 1) == 0)
        {
          v94 = *(v2 + 120);
          sub_1118D8();
          v95 = sub_16D5CC();
          v96 = sub_369C(v94, 1, v95);
          v97 = *(v2 + 120);
          if (v96 != 1)
          {
            v98 = *(v2 + 88);
            v99 = *(v2 + 40);
            v100 = sub_16D5BC();
            v102 = v101;
            sub_5DE54(v95);
            (*(v103 + 8))(v97, v95);
            v104 = sub_16D2AC();
            sub_8D14(v104);
            sub_16D29C();
            sub_11193C(v100, v102);

            sub_1118F0();

            sub_16D42C();

            sub_16D41C();
            sub_1118AC();

LABEL_89:
            *(v2 + 440) = v98;
            if ((*(v2 + 500) & 1) == 0)
            {
              v105 = *(v2 + 112);
              sub_1118D8();
              v106 = sub_16D5CC();
              v107 = sub_369C(v105, 1, v106);
              v108 = *(v2 + 112);
              if (v107 != 1)
              {
                v110 = *(v2 + 88);
                v111 = *(v2 + 48);
                v112 = sub_16D5BC();
                v114 = v113;
                sub_5DE54(v106);
                (*(v115 + 8))(v108, v106);
                v116 = sub_16D2AC();
                sub_8D14(v116);
                sub_16D29C();
                sub_11193C(v112, v114);

                sub_1118F0();

                sub_16D42C();

                v109 = sub_16D41C();

LABEL_94:
                *(v2 + 448) = v109;
                if ((*(v2 + 501) & 1) == 0)
                {
                  v117 = *(v2 + 104);
                  sub_1118D8();
                  v118 = sub_16D5CC();
                  v119 = sub_369C(v117, 1, v118);
                  v120 = *(v2 + 104);
                  if (v119 != 1)
                  {
                    v122 = *(v2 + 88);
                    v123 = *(v2 + 56);
                    v124 = sub_16D5BC();
                    v126 = v125;
                    sub_5DE54(v118);
                    (*(v127 + 8))(v120, v118);
                    v128 = sub_16D2AC();
                    sub_8D14(v128);
                    sub_16D29C();
                    sub_11193C(v124, v126);

                    sub_1118F0();

                    sub_16D42C();

                    v121 = sub_16D41C();

                    goto LABEL_99;
                  }

                  sub_6261C(*(v2 + 104));
                }

                v121 = 0;
LABEL_99:
                *(v2 + 456) = v121;
                v129 = swift_task_alloc();
                *(v2 + 464) = v129;
                *v129 = v2;
                v129[1] = sub_11119C;
                v130 = *(v2 + 80);
                sub_C98D8(*(v2 + 16));
                sub_111864();

                return sub_AE1B8(v131, v132, v133, v134, v135, v136);
              }

              sub_6261C(*(v2 + 112));
            }

            v109 = 0;
            goto LABEL_94;
          }

          sub_6261C(*(v2 + 120));
        }

        v98 = 0;
        goto LABEL_89;
      }

      sub_6261C(v72);
    }

    v73 = 0;
    goto LABEL_84;
  }

  switch(*(v2 + 496))
  {
    case 'Y':
      if (qword_1C55E0 != -1)
      {
        sub_1117D0();
      }

      sub_111880();
      *(v2 + 232) = qword_1D72C0;

      v11 = swift_task_alloc();
      *(v2 + 240) = v11;
      *v11 = v2;
      v11[1] = sub_1101E8;
      v12 = *(v2 + 72);
      v13 = *(v2 + 80);
      sub_1117F0();
      sub_111864();

      return sub_ACE54();
    case 'Z':
      if (qword_1C55E0 != -1)
      {
        sub_1117D0();
      }

      sub_111880();
      *(v2 + 328) = qword_1D72C0;

      v17 = swift_task_alloc();
      *(v2 + 336) = v17;
      *v17 = v2;
      v17[1] = sub_1109B0;
      v18 = *(v2 + 72);
      v19 = *(v2 + 80);
      sub_1117F0();
      sub_111864();

      return sub_AEE64();
    case '[':
    case '\\':
    case '^':
    case '_':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'f':
      goto LABEL_20;
    case ']':
      if (qword_1C55E8 != -1)
      {
        swift_once();
      }

      v26 = *(v2 + 144);
      *(v2 + 344) = qword_1D72C8;
      sub_208C0(93);

      sub_16E23C();

      v27 = sub_16D5CC();
      *(v2 + 352) = v27;
      sub_214C(v26, 0, 1, v27);
      v28 = swift_task_alloc();
      *(v2 + 360) = v28;
      *v28 = v2;
      v28[1] = sub_110AFC;
      sub_C98D8(*(v2 + 144));
      sub_111864();

      return sub_3E928();
      if (qword_1C55E0 != -1)
      {
        sub_1117D0();
      }

      v34 = *(v2 + 502);
      *(v2 + 472) = qword_1D72C0;
      if (v34)
      {

LABEL_75:
        v68 = 0;
        goto LABEL_80;
      }

      v64 = *(v2 + 96);
      sub_1118D8();
      sub_16D5CC();
      v65 = sub_1118AC();
      v66 = sub_369C(v65, 1, v3);
      v67 = *(v2 + 96);
      if (v66 == 1)
      {

        sub_6261C(v67);
        goto LABEL_75;
      }

      v74 = *(v2 + 88);
      v75 = *(v2 + 64);

      v76 = sub_16D5BC();
      v78 = v77;
      sub_5DE54(v3);
      (*(v79 + 8))(v67, v3);
      v80 = sub_16D2AC();
      sub_8D14(v80);
      sub_16D29C();
      sub_99F0C(v76, v78, 0x60u, v75);

      sub_1118F0();
      sub_1118AC();

      sub_16D42C();

      v68 = sub_16D41C();

LABEL_80:
      *(v2 + 480) = v68;
      v81 = swift_task_alloc();
      *(v2 + 488) = v81;
      *v81 = v2;
      v81[1] = sub_1113C0;
      v82 = *(v2 + 80);
      sub_C98D8(*(v2 + 16));
      sub_111864();

      result = sub_AD1D8(v83, v84, v85);
      break;
    case 'a':
      if (qword_1C55E0 != -1)
      {
        sub_1117D0();
      }

      sub_111880();
      *(v2 + 296) = qword_1D72C0;

      v30 = swift_task_alloc();
      *(v2 + 304) = v30;
      *v30 = v2;
      v30[1] = sub_110718;
      v31 = *(v2 + 72);
      v32 = *(v2 + 80);
      sub_1117F0();
      sub_111864();

      return sub_AFF40();
    case 'g':
      if (qword_1C55E0 != -1)
      {
        sub_1117D0();
      }

      sub_11189C();
      v21 = *(v2 + 498);
      *(v2 + 248) = qword_1D72C0;

      v22 = swift_task_alloc();
      *(v2 + 256) = v22;
      *v22 = v2;
      sub_11188C(v22);
      v23 = *(v2 + 32);
      v24 = *(v2 + 40);
      sub_111844(*(v2 + 16));
      sub_1118B8();

      return sub_AD540();
    default:
      JUMPOUT(0);
  }

  return result;
}

uint64_t sub_10FB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 160);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 152);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 152);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_10FCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 176);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 168);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 168);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_10FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 192);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 184);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 184);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_10FF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 208);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 200);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 200);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_11009C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 224);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 216);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 216);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1101E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 240);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 232);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 232);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_110334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 256);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 248);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 248);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_110480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 272);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 264);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 264);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1105CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 288);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 280);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 280);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_110718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 304);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 296);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 296);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_110864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 320);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 312);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 312);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1109B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 336);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 328);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 328);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_110AFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = v4[45];
  *v6 = *v2;

  v8 = v4[43];
  v9 = v4[18];
  if (v1)
  {

    sub_6261C(v9);
    v10 = sub_11155C;
  }

  else
  {
    v5[46] = a1;
    sub_6261C(v9);

    v10 = sub_110C6C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_110C6C()
{
  v1 = v0[46];
  if (v1)
  {
    v2 = [v1 dialog];
    sub_6805C();
    v3 = sub_16E2CC();

    if (sub_3B35C(v3))
    {
      sub_3B360(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = sub_16E48C();
      }

      else
      {
        v4 = *(v3 + 32);
      }

      v5 = v4;
      v6 = v0[17];

      v7 = [v5 fullPrint];

      sub_16E1BC();
      sub_16E23C();
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = v0[46];
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  v0[47] = v9;
  sub_214C(v0[17], v8, 1, v0[44]);
  if (qword_1C55E0 != -1)
  {
    sub_1117D0();
  }

  sub_111880();
  v0[48] = qword_1D72C0;

  v10 = swift_task_alloc();
  v0[49] = v10;
  *v10 = v0;
  v10[1] = sub_110E4C;
  v11 = v0[17];
  v12 = v0[9];
  v13 = v0[10];
  sub_1117F0();

  return sub_B119C();
}

uint64_t sub_110E4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = *(v4 + 392);
  *v6 = *v2;

  sub_5DA54();
  v9 = *(v8 + 384);
  if (v1)
  {

    v10 = sub_11164C;
  }

  else
  {
    v11 = *(v8 + 384);

    *(v5 + 400) = a1;
    v10 = sub_110F94;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_110F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = *(v10 + 400);

  sub_6261C(*(v10 + 136));
  v13 = *(v10 + 136);
  v12 = *(v10 + 144);
  v15 = *(v10 + 120);
  v14 = *(v10 + 128);
  v17 = *(v10 + 104);
  v16 = *(v10 + 112);
  v18 = *(v10 + 96);

  v19 = *(v10 + 8);
  sub_3E254();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_111050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  v14 = *(v12 + 416);
  *v13 = *v11;

  sub_5DA54();
  v16 = *(v15 + 408);
  if (v10)
  {
  }

  else
  {
    v17 = *(v15 + 408);
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_11119C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = v4[58];
  v8 = v4[57];
  v9 = v4[56];
  v10 = v4[55];
  v11 = v4[54];
  v12 = *v2;
  *v6 = *v2;

  v13 = v4[53];
  if (v1)
  {

    a1 = 0;
  }

  else
  {
  }

  v15 = v5[17];
  v14 = v5[18];
  v16 = v5[15];
  v17 = v5[16];
  v19 = v5[13];
  v18 = v5[14];
  v20 = v5[12];

  v21 = v12[1];

  return v21(a1);
}

uint64_t sub_1113C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v12 = *v11;
  v13 = *v11;
  sub_C990();
  *v14 = v13;
  v15 = v12[61];
  v16 = v12[60];
  v17 = *v11;
  *v14 = *v11;

  v18 = v12[59];
  if (v10)
  {
  }

  v20 = v13[17];
  v19 = v13[18];
  v22 = v13[15];
  v21 = v13[16];
  v24 = v13[13];
  v23 = v13[14];
  v25 = v13[12];

  v26 = v17[1];
  sub_3E254();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_11155C()
{
  v0[47] = 0;
  sub_214C(v0[17], 1, 1, v0[44]);
  if (qword_1C55E0 != -1)
  {
    sub_1117D0();
  }

  sub_111880();
  v0[48] = qword_1D72C0;

  v1 = swift_task_alloc();
  v0[49] = v1;
  *v1 = v0;
  v1[1] = sub_110E4C;
  v2 = v0[17];
  v3 = v0[9];
  v4 = v0[10];
  sub_1117F0();

  return sub_B119C();
}

uint64_t sub_11164C()
{
  sub_6261C(*(v0 + 136));
  sub_11191C();

  v1 = sub_111908();

  return v2(v1);
}

uint64_t sub_111734(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v5 = sub_16D63C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  a2(0);
  sub_16D62C();
  result = sub_16D5FC();
  *a3 = result;
  return result;
}

uint64_t sub_1117D0()
{

  return swift_once();
}

uint64_t sub_1117F0()
{
  v1 = v0[7];
  v2 = v0[3];
  return v0[2];
}

uint64_t sub_111824()
{
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
}

uint64_t sub_111844@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 16) = v1;
  return a1;
}

uint64_t sub_11188C(uint64_t result)
{
  *(result + 8) = v1;
  v4 = v2[9];
  v3 = v2[10];
  v5 = v2[6];
  v6 = v2[7];
  return result;
}

void sub_11189C()
{
  v1 = v0[501];
  v2 = v0[500];
  v3 = v0[499];
}

uint64_t sub_1118D8()
{
  v3 = *(v1 + 72);

  return sub_7DA9C(v3, v0);
}

uint64_t sub_1118F0()
{

  return sub_16D43C();
}

uint64_t sub_11191C()
{
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
}

double sub_11193C(uint64_t a1, uint64_t a2)
{

  return sub_99F0C(a1, a2, 0x6Bu, v3);
}

uint64_t sub_11195C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11199C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_111A40()
{
  sub_928E8();

  return sub_16C33C();
}

uint64_t sub_111A94()
{
  sub_8A88();
  v1[157] = v0;
  v1[156] = v2;
  v3 = type metadata accessor for UnavailableDataFlow();
  v1[158] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[159] = sub_8BC0();
  v6 = sub_16D63C();
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[160] = sub_8BC0();
  v9 = sub_16DBEC();
  v1[161] = v9;
  sub_888C(v9);
  v1[162] = v10;
  v12 = *(v11 + 64);
  v1[163] = sub_8C38();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v13 = sub_16BF5C();
  v1[167] = v13;
  sub_888C(v13);
  v1[168] = v14;
  v16 = *(v15 + 64);
  v1[169] = sub_8BC0();
  v17 = sub_16C0BC();
  v1[170] = v17;
  sub_888C(v17);
  v1[171] = v18;
  v20 = *(v19 + 64);
  v1[172] = sub_8BC0();
  v21 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v21);
  v23 = *(v22 + 64);
  v1[173] = sub_8BC0();
  v24 = sub_16BD9C();
  v1[174] = v24;
  sub_888C(v24);
  v1[175] = v25;
  v27 = *(v26 + 64);
  v1[176] = sub_8C38();
  v1[177] = swift_task_alloc();
  v28 = sub_17960();

  return _swift_task_switch(v28, v29, v30);
}

void sub_111CC0()
{
  v104 = v0;
  v1 = **(v0 + 1256);
  sub_16D74();
  v2 = sub_16E14C();
  v3 = sub_1730C(v1, v2);
  v4 = v3;
  *(v0 + 913) = v3;

  if (v4 == 205)
  {
    v5 = *(v0 + 1304);
    v6 = *(v0 + 1296);
    v7 = *(v0 + 1288);
    v8 = *(v0 + 1256);
    v9 = sub_16DBBC();
    sub_8B48();
    (*(v6 + 16))(v5, v9, v7);
    sub_11B5D4(v8, v0 + 80);
    v10 = sub_16DBDC();
    v11 = sub_16E37C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1304);
    v14 = *(v0 + 1296);
    v15 = *(v0 + 1288);
    if (v12)
    {
      sub_8BD8();
      v16 = sub_A75B8();
      v103[0] = v16;
      *v13 = 136315138;
      sub_140650(*(v0 + 80));
      sub_9293C(v0 + 80);
      v17 = sub_A76B4();
      v20 = sub_3AB7C(v17, v18, v19);

      *(v13 + 4) = v20;
      sub_11C30C(&def_259DC, v10, v11, "%s does not have a HealthKitIdentifier to create a GetHealthQuantityFlow");
      sub_2D64(v16);
      sub_8A2C();
      sub_A76C0();
    }

    else
    {

      sub_9293C(v0 + 80);
    }

    (*(v14 + 8))(v13, v15);
    v103[0] = 0;
    v103[1] = 0xE000000000000000;
    sub_16E47C(72);
    sub_140650(v1);
    sub_16E26C(v105);

    v106._object = 0x800000000017EBB0;
    v106._countAndFlagsBits = 0xD000000000000046;
    sub_16E26C(v106);
    sub_16E53C();
    sub_5E1A0();
  }

  else
  {
    v21 = *(v0 + 1392);
    v22 = *(v0 + 1384);
    v23 = *(v0 + 1256);
    v24 = v23[5];
    sub_2D20(v23 + 1, v23[4]);
    v25 = *(v24 + 32);
    v26 = sub_387CC();
    v27(v26);
    if (sub_369C(v22, 1, v21) == 1)
    {
      sub_8748(*(v0 + 1384), &qword_1C5690, &dword_16F320);
    }

    else
    {
      v47 = *(v0 + 1376);
      v48 = *(v0 + 1368);
      v49 = *(v0 + 1360);
      v50 = *(v0 + 1352);
      v51 = *(v0 + 1344);
      v52 = *(v0 + 1336);
      (*(*(v0 + 1400) + 32))(*(v0 + 1416), *(v0 + 1384), *(v0 + 1392));
      sub_16C08C();
      sub_16BD7C();
      v53 = sub_16C03C();
      v54 = *(v51 + 8);
      v55 = sub_387CC();
      v54(v55);
      v56 = *(v48 + 8);
      v57 = sub_C9F8();
      v56(v57);
      if ((v53 & 1) == 0)
      {
        goto LABEL_16;
      }

      v58 = *(v0 + 1416);
      v59 = *(v0 + 1376);
      v60 = *(v0 + 1360);
      v61 = *(v0 + 1352);
      v62 = *(v0 + 1336);
      sub_16C08C();
      sub_16BD4C();
      LOBYTE(v58) = sub_16C03C();
      v63 = sub_387CC();
      v54(v63);
      v64 = sub_C9F8();
      v56(v64);
      if ((v58 & 1) == 0)
      {
LABEL_16:
        v65 = *(v0 + 1416);
        v66 = *(v0 + 1408);
        v67 = *(v0 + 1400);
        v68 = *(v0 + 1392);
        v69 = *(v0 + 1328);
        v70 = *(v0 + 1296);
        v71 = *(v0 + 1288);
        v72 = sub_16DBBC();
        sub_8B48();
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v67 + 16);
        v74 = sub_38408();
        v75(v74);
        v76 = sub_16DBDC();
        v77 = sub_16E36C();
        v78 = sub_84370(v77);
        v79 = *(v0 + 1408);
        v80 = *(v0 + 1400);
        v81 = *(v0 + 1392);
        v82 = *(v0 + 1328);
        v83 = *(v0 + 1296);
        v84 = *(v0 + 1288);
        if (v78)
        {
          sub_8BD8();
          v102 = sub_A75B8();
          v103[0] = v102;
          *v84 = 136315138;
          sub_11B9B4(&qword_1C97E8, &type metadata accessor for DateInterval);
          v85 = sub_16E68C();
          v100 = v76;
          v101 = v82;
          v87 = v86;
          v88 = *(v80 + 8);
          v89 = sub_4B364();
          v88(v89);
          v90 = v88;
          v91 = sub_3AB7C(v85, v87, v103);

          *(v84 + 4) = v91;
          sub_11C30C(&def_259DC, v100, v77, "Received rings request outside of today. Punching out instead. (dateInteval: %s)");
          sub_2D64(v102);
          sub_8A2C();
          sub_A76C0();

          (*(v83 + 8))(v101, v84);
        }

        else
        {

          v92 = *(v80 + 8);
          v93 = sub_4B364();
          v92(v93);
          v90 = v92;
          (*(v83 + 8))(v82, v84);
        }

        v94 = *(v0 + 1416);
        v95 = *(v0 + 1392);
        v96 = *(v0 + 1248);
        sub_8388(*(v0 + 1256) + 48, v0 + 672);
        *(v0 + 736) = &type metadata for WellnessCATProvider;
        *(v0 + 744) = &off_1BD5D8;
        sub_11C1CC();
        v97 = swift_allocObject();
        *(v0 + 712) = v97;
        *(v97 + 16) = 0u;
        *(v97 + 32) = 0u;
        sub_3DBD0((v0 + 752));
        *(v0 + 664) = 231;
        *(v0 + 912) = 0;
        sub_3DF60();
        sub_16C4EC();
        v90(v94, v95);
        sub_92798(v0 + 664);
        sub_11BD2C();

        sub_C9BC();
        sub_5E1A0();

        __asm { BRAA            X1, X16 }
      }

      (*(*(v0 + 1400) + 8))(*(v0 + 1416), *(v0 + 1392));
    }

    v28 = *(v0 + 1320);
    v29 = *(v0 + 1296);
    v30 = *(v0 + 1288);
    v31 = [objc_allocWithZone(sub_16DA0C()) init];
    *(v0 + 1424) = v31;
    *(v0 + 1432) = sub_16DBBC();
    sub_8B48();
    *(v0 + 1440) = *(v29 + 16);
    *(v0 + 1448) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32 = sub_389C0();
    v33(v32);
    v34 = sub_16DBDC();
    v35 = sub_16E36C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = sub_1BA38();
      sub_1BA50(v36);
      _os_log_impl(&def_259DC, v34, v35, "Trying to fetch Activity Summary", v30, 2u);
      sub_1BA00();
    }

    v37 = *(v0 + 1320);
    v38 = *(v0 + 1296);
    v39 = *(v0 + 1288);
    v40 = *(v0 + 1256);

    *(v0 + 1456) = *(v38 + 8);
    v41 = sub_4B4EC();
    v42(v41);
    v43 = *(v40 + 248);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1240;
    *(v0 + 24) = sub_112548;
    v44 = swift_continuation_init();
    *(v0 + 1136) = sub_2440(&qword_1CA8F0, &qword_176F18);
    *(v0 + 1112) = v44;
    *(v0 + 1080) = _NSConcreteStackBlock;
    *(v0 + 1088) = 1107296256;
    *(v0 + 1096) = sub_53C4;
    *(v0 + 1104) = &unk_1BC770;
    [v43 handleGetAcitivitySummary:v31 completion:v0 + 1080];
    sub_5E1A0();

    _swift_continuation_await(v45);
  }
}

uint64_t sub_112548()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_112618()
{
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1440);
  v4 = *(v0 + 1432);
  v5 = *(v0 + 1312);
  v6 = *(v0 + 1288);
  v7 = *(v0 + 1240);
  *(v0 + 1464) = v7;
  sub_1B9B4();
  v3(v5, v4, v6);
  v8 = v7;
  v9 = sub_16DBDC();
  LOBYTE(v5) = sub_16E36C();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = sub_8BD8();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    sub_4B3D0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_8748(v11, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_8A2C();
  }

  v18 = *(v0 + 1296) + 8;
  v19 = (*(v0 + 1456))(*(v0 + 1312), *(v0 + 1288));
  v20 = (*(&stru_20.maxprot + (swift_isaMask & *v8)))(v19);
  if (v20 != 4)
  {
    if (v20 == 102)
    {
      v32 = *(v0 + 1424);
      v33 = *(v0 + 913);
      v34 = *(v0 + 1392);
      v35 = *(v0 + 1280);
      v36 = *(v0 + 1272);
      v37 = *(v0 + 1264);
      v38 = *(v0 + 1256);
      v39 = *(v0 + 1248);
      v40 = v37[5];
      sub_8AB4();
      sub_214C(v41, v42, v43, v44);
      sub_8388(v38 + 48, &v36[v37[6]]);
      sub_8284(v38 + 88, &v36[v37[7]]);
      v45 = sub_16C58C();
      sub_11C1E4(v45);
      v46 = sub_16C57C();
      v47 = &v36[v37[8]];
      v47[3] = v1;
      v47[4] = &protocol witness table for ResponseFactory;
      *v47 = v46;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v48 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v49 = sub_16D58C();
      *v36 = v33;
      *&v36[v37[9]] = v48;
      *&v36[v37[10]] = v49;
      sub_11B9B4(&qword_1C57C8, type metadata accessor for UnavailableDataFlow);
      sub_C9E0();
      sub_16C4EC();

      sub_11B818(v36, type metadata accessor for UnavailableDataFlow);
    }

    else if (v20 == 101)
    {
      v21 = *(v0 + 1424);
      v22 = *(v0 + 913);
      v23 = *(v0 + 1280);
      v24 = *(v0 + 1256);
      v25 = *(v0 + 1248);
      sub_8388(v24 + 48, v0 + 408);
      sub_8284(v24 + 88, v0 + 448);
      v26 = sub_16C58C();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v29 = sub_16C57C();
      *(v0 + 632) = v26;
      *(v0 + 640) = &protocol witness table for ResponseFactory;
      *(v0 + 608) = v29;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v30 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v31 = sub_16D58C();
      *(v0 + 400) = v22;
      *(v0 + 648) = v30;
      *(v0 + 656) = v31;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v0 + 400);
    }

    else
    {
      v55 = *(v0 + 1424);
      v56 = *(v0 + 1248);
      sub_8284(*(v0 + 1256) + 88, v0 + 920);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v0 + 920);
    }

    sub_11BD2C();

    sub_C9BC();
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  v50 = swift_task_alloc();
  *(v0 + 1472) = v50;
  *v50 = v0;
  v50[1] = sub_112AFC;
  v51 = *(v0 + 1256);
  v52 = *(v0 + 913);
  sub_8CC0();

  return sub_112CD8();
}

uint64_t sub_112AFC()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 1472);
  v9 = *v0;
  *(v2 + 1480) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

void sub_112BEC()
{
  v1 = v0[185];
  v2 = v0[183];
  v3 = v0[178];
  v4 = v0[156];
  sub_16C4FC();

  sub_11BD2C();

  sub_C9BC();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_112CD8()
{
  sub_8A88();
  *(v1 + 3320) = v0;
  *(v1 + 265) = v2;
  *(v1 + 3312) = v3;
  v4 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v4);
  v6 = *(v5 + 64);
  *(v1 + 3328) = sub_8BC0();
  v7 = sub_16BF5C();
  *(v1 + 3336) = v7;
  sub_888C(v7);
  *(v1 + 3344) = v8;
  v10 = *(v9 + 64);
  *(v1 + 3352) = sub_8BC0();
  v11 = type metadata accessor for SingleActivitySummaryModel();
  *(v1 + 3360) = v11;
  sub_4348(v11);
  v13 = *(v12 + 64);
  *(v1 + 3368) = sub_8C38();
  *(v1 + 3376) = swift_task_alloc();
  *(v1 + 3384) = swift_task_alloc();
  *(v1 + 3392) = swift_task_alloc();
  v14 = type metadata accessor for SnippetHeaderModel();
  *(v1 + 3400) = v14;
  sub_4348(v14);
  v16 = *(v15 + 64);
  *(v1 + 3408) = sub_8C38();
  *(v1 + 3416) = swift_task_alloc();
  *(v1 + 3424) = swift_task_alloc();
  v17 = sub_16D5CC();
  *(v1 + 3432) = v17;
  sub_888C(v17);
  *(v1 + 3440) = v18;
  v20 = *(v19 + 64);
  *(v1 + 3448) = sub_8C38();
  *(v1 + 3456) = swift_task_alloc();
  *(v1 + 3464) = swift_task_alloc();
  *(v1 + 3472) = swift_task_alloc();
  *(v1 + 3480) = swift_task_alloc();
  *(v1 + 3488) = swift_task_alloc();
  v21 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v21);
  v23 = *(v22 + 64);
  *(v1 + 3496) = sub_8C38();
  *(v1 + 3504) = swift_task_alloc();
  *(v1 + 3512) = swift_task_alloc();
  *(v1 + 3520) = swift_task_alloc();
  *(v1 + 3528) = swift_task_alloc();
  *(v1 + 3536) = swift_task_alloc();
  *(v1 + 3544) = swift_task_alloc();
  v24 = type metadata accessor for WellnessQueryingRingsParameters(0);
  *(v1 + 3552) = v24;
  sub_4348(v24);
  v26 = *(v25 + 64);
  *(v1 + 3560) = sub_8BC0();
  v27 = sub_16C46C();
  *(v1 + 3568) = v27;
  sub_888C(v27);
  *(v1 + 3576) = v28;
  v30 = *(v29 + 64);
  *(v1 + 3584) = sub_8C38();
  *(v1 + 3592) = swift_task_alloc();
  v31 = sub_16C7BC();
  *(v1 + 3600) = v31;
  sub_888C(v31);
  *(v1 + 3608) = v32;
  v34 = *(v33 + 64);
  *(v1 + 3616) = sub_8C38();
  *(v1 + 3624) = swift_task_alloc();
  v35 = sub_16DBEC();
  *(v1 + 3632) = v35;
  sub_888C(v35);
  *(v1 + 3640) = v36;
  v38 = *(v37 + 64);
  *(v1 + 3648) = sub_8C38();
  *(v1 + 3656) = swift_task_alloc();
  *(v1 + 3664) = swift_task_alloc();
  *(v1 + 3672) = swift_task_alloc();
  *(v1 + 3680) = swift_task_alloc();
  *(v1 + 3688) = swift_task_alloc();
  *(v1 + 3696) = swift_task_alloc();
  *(v1 + 3704) = swift_task_alloc();
  *(v1 + 3712) = swift_task_alloc();
  *(v1 + 3720) = swift_task_alloc();
  *(v1 + 3728) = swift_task_alloc();
  *(v1 + 3736) = swift_task_alloc();
  *(v1 + 3744) = swift_task_alloc();
  v39 = sub_2440(&qword_1CA8F8, &qword_176F30);
  sub_4348(v39);
  v41 = *(v40 + 64);
  *(v1 + 3752) = sub_8C38();
  *(v1 + 3760) = swift_task_alloc();
  *(v1 + 3768) = swift_task_alloc();
  *(v1 + 3776) = swift_task_alloc();
  *(v1 + 3784) = swift_task_alloc();
  *(v1 + 3792) = swift_task_alloc();
  *(v1 + 3800) = swift_task_alloc();
  *(v1 + 3808) = swift_task_alloc();
  *(v1 + 3816) = swift_task_alloc();
  *(v1 + 3824) = swift_task_alloc();
  v42 = sub_17960();

  return _swift_task_switch(v42, v43, v44);
}

uint64_t sub_113178()
{
  v1 = [*(v0 + 3312) activeEnergyBurnedGoal];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 3816);
    sub_25908(0, &qword_1CA908, NSUnitEnergy_ptr);
    sub_16BCDC();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(v0 + 3824);
  v6 = *(v0 + 3816);
  v7 = sub_387CC();
  v9 = sub_2440(v7, v8);
  sub_214C(v6, v4, 1, v9);
  sub_11B684(v6, v5);
  v10 = sub_387CC();
  v12 = sub_2440(v10, v11);
  v13 = 0.0;
  if (!sub_369C(v5, 1, v12))
  {
    v14 = *(v0 + 3824);
    sub_16BCFC();
    v13 = v15;
  }

  v16 = *(v0 + 3312);
  v17 = *(v0 + 265);
  sub_8748(*(v0 + 3824), &qword_1CA8F8, &qword_176F30);
  [v16 appleExerciseTimeGoal];
  v19 = v18;
  [v16 appleStandHoursGoal];
  if (sub_118A5C(v17, v13, v19, v20))
  {
    sub_8388(*(v0 + 3320) + 48, v0 + 280);
    *(v0 + 344) = &type metadata for WellnessCATProvider;
    *(v0 + 352) = &off_1BD5D8;
    sub_11C1CC();
    v21 = swift_allocObject();
    *(v0 + 320) = v21;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    sub_3DBD0((v0 + 360));
    *(v0 + 272) = 249;
    *(v0 + 520) = 0;
    sub_3DF60();
    sub_16C32C();
    sub_92798(v0 + 272);
    sub_11BB5C();
    sub_11BBF0();
    v203 = *(v0 + 3480);
    v204 = *(v0 + 3472);
    v205 = *(v0 + 3464);
    v206 = *(v0 + 3456);
    v207 = *(v0 + 3448);
    v208 = *(v0 + 3424);
    v209 = *(v0 + 3416);
    v210 = *(v0 + 3408);
    v211 = *(v0 + 3392);
    v212 = *(v0 + 3384);
    v213 = *(v0 + 3376);
    v214 = *(v0 + 3368);
    v215 = *(v0 + 3352);
    v217 = *(v0 + 3328);

    sub_5D948();
    sub_11BE9C();

    __asm { BRAA            X2, X16 }
  }

  v24 = *(v0 + 3312);
  *(v0 + 3208) = 0;
  *(v0 + 3216) = 1;
  *(v0 + 3192) = 0;
  *(v0 + 3200) = 1;
  v25 = [v24 isWheelchairUser];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 BOOLValue];
  }

  else
  {
    v27 = 0;
  }

  *(v0 + 266) = v27;
  v28 = *(v0 + 265);
  v29 = sub_11B6F4(*(v0 + 3312));
  *(v0 + 3832) = v29;
  *(v0 + 3840) = v30;
  v31 = 0.0;
  v218 = v27;
  v216 = v30;
  if (v28)
  {
    switch(v28)
    {
      case 91:
        v41 = [*(v0 + 3312) activeEnergyBurned];
        if (v41)
        {
          v42 = v41;
          v43 = *(v0 + 3800);
          sub_25908(0, &qword_1CA908, NSUnitEnergy_ptr);
          sub_11C21C();

          v44 = 0;
        }

        else
        {
          v44 = 1;
        }

        v64 = *(v0 + 3808);
        v65 = *(v0 + 3800);
        sub_11C0B4(v41, v44);
        v66 = sub_11C1A0();
        v50 = v66 != 0;
        v67 = *(v0 + 3808);
        if (v66)
        {
          sub_8748(*(v0 + 3808), &qword_1CA8F8, &qword_176F30);
          v36 = 0.0;
        }

        else
        {
          sub_16BCFC();
          v69 = v68;
          sub_8748(v67, &qword_1CA8F8, &qword_176F30);
          v70 = sub_387CC();
          v36 = sub_99F0C(v70, v71, 0x5Bu, v69);
        }

        v72 = *(v0 + 3312);
        *(v0 + 3208) = v36;
        *(v0 + 3216) = v66 != 0;
        v73 = [v72 activeEnergyBurnedGoal];
        if (v73)
        {
          v74 = v73;
          v75 = *(v0 + 3784);
          sub_25908(0, &qword_1CA908, NSUnitEnergy_ptr);
          sub_11C21C();

          v76 = 0;
        }

        else
        {
          v76 = 1;
        }

        v77 = *(v0 + 3792);
        v78 = *(v0 + 3784);
        sub_11C0B4(v73, v76);
        v79 = sub_11C1A0();
        v80 = *(v0 + 3792);
        if (v79)
        {
          sub_8748(*(v0 + 3792), &qword_1CA8F8, &qword_176F30);
          v49 = 1;
          v31 = 0.0;
        }

        else
        {
          sub_16BCFC();
          v82 = v81;
          sub_8748(v80, &qword_1CA8F8, &qword_176F30);
          v83 = sub_387CC();
          v31 = sub_99F0C(v83, v84, 0x5Bu, v82);
          v49 = 0;
        }

        goto LABEL_34;
      case 90:
        v45 = *(v0 + 3312);
        [v45 appleExerciseTime];
        v46 = sub_387CC();
        v36 = sub_99F0C(v46, v47, 0x5Au, v48);
        *(v0 + 3208) = v36;
        *(v0 + 3216) = 0;
        [v45 appleExerciseTimeGoal];
        v37 = sub_387CC();
        v40 = 90;
        goto LABEL_21;
      case 4:
        v32 = *(v0 + 3312);
        [v32 appleStandHours];
        v33 = sub_387CC();
        v36 = sub_99F0C(v33, v34, 4u, v35);
        *(v0 + 3208) = v36;
        *(v0 + 3216) = 0;
        [v32 appleStandHoursGoal];
        v37 = sub_387CC();
        v40 = 4;
LABEL_21:
        v31 = sub_99F0C(v37, v38, v40, v39);
        v49 = 0;
        v50 = 0;
LABEL_34:
        v85 = v29;
        *(v0 + 3192) = v31;
        *(v0 + 3200) = v49;
LABEL_48:
        *(v0 + 268) = v50;
        *(v0 + 4000) = v36;
        *(v0 + 267) = v49;
        *(v0 + 3992) = v31;
        v119 = *(v0 + 3712);
        v120 = *(v0 + 3640);
        v121 = *(v0 + 3632);
        v122 = sub_16DBBC();
        *(v0 + 4008) = v122;
        sub_8B48();
        v123 = *(v120 + 16);
        *(v0 + 4016) = v123;
        *(v0 + 4024) = (v120 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v123(v119, v122, v121);
        v124 = sub_16DBDC();
        v125 = sub_16E36C();
        if (sub_4B3A8(v125))
        {
          v126 = sub_1BA38();
          *v126 = 0;
          _os_log_impl(&def_259DC, v124, v125, "Creating pattern result for single ring query.", v126, 2u);
          sub_8A2C();
        }

        v127 = *(v0 + 3712);
        v128 = *(v0 + 3640);
        v129 = *(v0 + 3632);

        v130 = *(v128 + 8);
        *(v0 + 4032) = v130;
        v130(v127, v129);
        *(v0 + 2672) = &type metadata for WellnessFeatureFlagsKey;
        *(v0 + 2680) = sub_3736C();
        *(v0 + 2648) = 4;
        v131 = sub_16C86C();
        sub_2D64((v0 + 2648));
        if ((v131 & 1) == 0)
        {
          v155 = *(v0 + 3560);
          v156 = *(v0 + 3552);
          v157 = *(v0 + 3432);
          v158 = *(v0 + 265);
          v159 = *sub_2D20((*(v0 + 3320) + 208), *(*(v0 + 3320) + 232));

          sub_8AB4();
          sub_214C(v160, v161, v162, v157);
          v163 = v156[5];
          sub_8AB4();
          sub_214C(v164, v165, v166, v157);
          v167 = v156[12];
          sub_8AB4();
          sub_214C(v168, v169, v170, v157);
          *(v155 + v156[6]) = 0;
          *(v155 + v156[7]) = 0;
          v171 = v155 + v156[8];
          *v171 = 0;
          *(v171 + 8) = 1;
          *(v155 + v156[9]) = 0;
          *(v155 + v156[10]) = v218;
          v172 = v155 + v156[11];
          *v172 = 0;
          *(v172 + 8) = 1;
          sub_118ABC(v155, v158, v0 + 3208, v85, v216, v0 + 3192);
          sub_6DB4C();
          *(v0 + 4040) = v173;
          v174 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
          v175 = swift_task_alloc();
          *(v0 + 4048) = v175;
          *v175 = v0;
          v175[1] = sub_115D90;
          sub_11BE9C();

          __asm { BR              X3 }
        }

        v132 = *(v0 + 3704);
        v133 = *(v0 + 3632);
        sub_8B48();
        v123(v132, v122, v133);
        v134 = sub_16DBDC();
        v135 = sub_16E36C();
        if (sub_4B3A8(v135))
        {
          *sub_1BA38() = 0;
          sub_4B3D0();
          _os_log_impl(v136, v137, v138, v139, v140, 2u);
          sub_8A2C();
        }

        v141 = *(v0 + 3704);
        v142 = *(v0 + 3640);
        v143 = *(v0 + 3632);
        v144 = *(v0 + 3544);
        v145 = *(v0 + 3432);
        v146 = *(v0 + 3320);
        v147 = *(v0 + 265);

        v148 = sub_C9E0();
        (v130)(v148);
        *(v0 + 4072) = *(v146 + 304);
        sub_208C0(v147);
        sub_16E23C();

        sub_388E4();
        sub_214C(v149, v150, v151, v145);
        v152 = swift_task_alloc();
        *(v0 + 4080) = v152;
        *v152 = v0;
        v152[1] = sub_116428;
        sub_C98D8(*(v0 + 3544));
        sub_11BE9C();

        return sub_3F58C();
    }

LABEL_47:
    v85 = v29;
    v49 = 1;
    v36 = 0.0;
    v50 = 1;
    goto LABEL_48;
  }

  v51 = *(v0 + 3312);
  [v51 appleExerciseTime];
  v52 = sub_11BE8C();
  *(v0 + 3848) = sub_99F0C(v52, v53, v54, v55);
  [v51 appleExerciseTimeGoal];
  v56 = sub_11BE8C();
  *(v0 + 3856) = sub_99F0C(v56, v57, v58, v59);
  v60 = [v51 activeEnergyBurned];
  if (v60)
  {
    v61 = v60;
    v62 = *(v0 + 3768);
    sub_25908(0, &qword_1CA908, NSUnitEnergy_ptr);
    sub_11C21C();

    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  v86 = *(v0 + 3776);
  v87 = *(v0 + 3768);
  sub_11C0B4(v60, v63);
  v88 = sub_11C1A0();
  v89 = *(v0 + 3776);
  if (v88)
  {
    sub_8748(*(v0 + 3776), &qword_1CA8F8, &qword_176F30);
    v90 = 0.0;
  }

  else
  {
    sub_16BCFC();
    v92 = v91;
    sub_8748(v89, &qword_1CA8F8, &qword_176F30);
    v93 = sub_11BE8C();
    v90 = sub_99F0C(v93, v94, v95, v92);
  }

  *(v0 + 3864) = v90;
  v96 = [*(v0 + 3312) activeEnergyBurnedGoal];
  if (v96)
  {
    v97 = v96;
    v98 = *(v0 + 3752);
    sub_25908(0, &qword_1CA908, NSUnitEnergy_ptr);
    sub_16BCDC();

    v99 = 0;
  }

  else
  {
    v99 = 1;
  }

  v100 = *(v0 + 3760);
  v101 = *(v0 + 3752);
  sub_214C(v101, v99, 1, v12);
  sub_11B684(v101, v100);
  v102 = sub_11C1A0();
  v103 = *(v0 + 3760);
  if (v102)
  {
    sub_8748(*(v0 + 3760), &qword_1CA8F8, &qword_176F30);
    v104 = 0.0;
  }

  else
  {
    sub_16BCFC();
    v106 = v105;
    sub_8748(v103, &qword_1CA8F8, &qword_176F30);
    v107 = sub_11BE8C();
    v104 = sub_99F0C(v107, v108, v109, v106);
  }

  *(v0 + 3872) = v104;
  v110 = *(v0 + 3312);
  [v110 appleStandHours];
  v111 = sub_11BE8C();
  *(v0 + 3880) = sub_99F0C(v111, v112, v113, v114);
  [v110 appleStandHoursGoal];
  v115 = sub_11BE8C();
  *(v0 + 3888) = sub_99F0C(v115, v116, v117, v118);
  if (v102 || v88)
  {
    goto LABEL_47;
  }

  v178 = *(v0 + 3744);
  v179 = *(v0 + 3640);
  v180 = *(v0 + 3632);
  *(v0 + 3896) = sub_16DBBC();
  sub_8B48();
  *(v0 + 3904) = *(v179 + 16);
  *(v0 + 3912) = (v179 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v181 = sub_389C0();
  v182(v181);
  v183 = sub_16DBDC();
  v184 = sub_16E36C();
  if (sub_4B3A8(v184))
  {
    *sub_1BA38() = 0;
    sub_4B3D0();
    _os_log_impl(v185, v186, v187, v188, v189, 2u);
    sub_8A2C();
  }

  v190 = *(v0 + 3744);
  v191 = *(v0 + 3640);
  v192 = *(v0 + 3632);
  v193 = *(v0 + 3320);

  *(v0 + 3920) = *(v191 + 8);
  v194 = sub_C9E0();
  v195(v194);
  v196 = *(v193 + 296);
  v197 = swift_task_alloc();
  *(v0 + 3928) = v197;
  *v197 = v0;
  v197[1] = sub_113FC4;
  sub_11BE9C();

  return sub_B0194(v198, v199, v200, v201);
}

uint64_t sub_113FC4()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 3928);
  *v4 = *v1;
  *(v3 + 3936) = v7;

  if (v0)
  {
    v8 = *(v3 + 3840);
  }

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1140D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_11C068();
  sub_11C0EC();
  v55 = *(v54 + 3936);
  v56 = *(v54 + 3624);
  v57 = *(v54 + 3592);
  v58 = *(v54 + 3584);
  v59 = *(v54 + 3576);
  v60 = *(v54 + 3568);
  v61 = *(v54 + 3320);
  sub_16C43C();
  (*(v59 + 16))(v58, v57, v60);
  sub_11C01C();
  sub_16C75C();
  (*(v59 + 8))(v57, v60);
  v62 = [v55 catId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_11C0F8();
  v63 = sub_17970();
  v64(v63);
  v65 = *(v54 + 2360);
  sub_2D20((v54 + 2328), *(v54 + 2352));
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64((v54 + 2328));
LABEL_4:
    if (*(v54 + 3840))
    {
      v70 = *(v54 + 3832);
      v71 = *(v54 + 3840);
    }

    swift_task_alloc();
    sub_179E8();
    *(v54 + 3944) = v72;
    *v72 = v73;
    v72[1] = sub_11466C;
    v74 = *(v54 + 266);
    v75 = *(v54 + 3320);
    sub_11BFDC();

    return sub_118DA0();
  }

  sub_11C0F8();
  v66 = sub_17970();
  v67(v66);
  v68 = *(v54 + 2400);
  sub_2D20((v54 + 2368), *(v54 + 2392));
  sub_17970();
  v69 = sub_16C3FC();
  sub_2D64((v54 + 2368));
  sub_2D64((v54 + 2328));
  if (v69)
  {
    goto LABEL_4;
  }

  v78 = *(v54 + 3840);

  sub_11C0F8();
  v79 = sub_17970();
  v80(v79);
  v81 = *(v54 + 2840);
  sub_2D20((v54 + 2808), *(v54 + 2832));
  sub_17970();
  v82 = sub_16C41C();
  sub_2D64((v54 + 2808));
  if (v82)
  {
    v83 = *(v54 + 3936);
    v84 = *(v54 + 3320);
    sub_8388(v61 + 48, v54 + 24);
    *(v54 + 88) = &type metadata for WellnessCATProvider;
    *(v54 + 96) = &off_1BD5D8;
    sub_11C1CC();
    v85 = swift_allocObject();
    *(v54 + 64) = v85;
    *(v85 + 16) = 0u;
    *(v85 + 32) = 0u;
    sub_8284((v84 + 11), v54 + 104);
    *(v54 + 16) = 249;
    *(v54 + 264) = 0;
    v86 = v84[36];
    sub_2D20(v84 + 32, v84[35]);
    *(v54 + 3968) = sub_2440(&qword_1C5ED8, &unk_173090);
    v87 = swift_allocObject();
    *(v54 + 3976) = v87;
    *(v87 + 16) = xmmword_170F70;
    *(v87 + 32) = v83;
    v88 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v89 = v83;
    swift_task_alloc();
    sub_179E8();
    *(v54 + 3984) = v90;
    *v90 = v91;
    v90[1] = sub_115530;
    v92 = *(v54 + 3624);
    sub_11BFDC();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v93, v94, v95, v96, v97);
  }

  else
  {
    v99 = *(v54 + 3936);
    v100 = *(v54 + 3624);
    v101 = *(v54 + 3608);
    v102 = *(v54 + 3600);
    sub_8284(*(v54 + 3320) + 88, v54 + 1752);
    sub_82E0();
    v115 = sub_16C32C();

    sub_8334(v54 + 1752);
    v103 = *(v101 + 8);
    v104 = sub_C9F8();
    v105(v104);
    sub_11BA8C();
    sub_11BC88(v106);

    sub_11BF74();
    sub_11BFDC();

    return v109(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v115, a51, a52, a53, a54);
  }
}

uint64_t sub_11466C()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 3944);
  *(v1 + 3840);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_114778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v39 = v38[280];
  if (!v39)
  {
    v89 = v38[489];
    v90 = v38[488];
    v91 = v38[487];
    v92 = v38[467];
    v93 = v38[454];
    sub_1B9B4();
    v94 = sub_38408();
    v90(v94);
    v95 = sub_16DBDC();
    v96 = sub_16E36C();
    if (sub_1BA1C(v96))
    {
      v97 = sub_1BA38();
      sub_1BA50(v97);
      sub_1B9D0(&def_259DC, v98, v99, "Call to getLabels() returned nil, returning GenericErrorFlow");
      sub_1BA00();
    }

    v100 = v38[492];
    v101 = v38[490];
    v102 = v38[467];
    v103 = v38[455];
    v104 = v38[454];
    v134 = v38[453];
    v105 = v38[451];
    v106 = v38[450];
    v107 = v38[415];

    v108 = sub_C9F8();
    v101(v108);
    sub_8284(v107 + 88, (v38 + 179));
    sub_82E0();
    sub_16C32C();

    sub_8334((v38 + 179));
    (*(v105 + 8))(v134, v106);
    sub_11BA8C();
    v115 = v38[433];
    v116 = v38[432];
    v117 = v38[431];
    v118 = v38[428];
    v119 = v38[427];
    v121 = v38[426];
    v123 = v38[424];
    v125 = v38[423];
    v128 = v38[422];
    v130 = v38[421];
    v132 = v38[419];
    v135 = v38[416];

    sub_5D948();
    sub_11C360();

    __asm { BRAA            X2, X16 }
  }

  v40 = v38[281];
  v133 = v38[283];
  v136 = v38[282];
  v129 = v38[279];
  v131 = v38[284];
  v41 = v38[286];
  v122 = v38[287];
  v124 = v38[285];
  v42 = v38[288];
  v43 = v38[289];
  v44 = v38[290];
  v45 = v38[481];
  v38[329] = &type metadata for WellnessFeatureFlagsKey;
  v38[330] = sub_3736C();
  *(v38 + 2608) = 4;
  v126 = sub_16C86C();
  v46 = sub_2D64(v38 + 326);
  if ((v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*(v38 + 481) <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_11BF64();
  if (!v55)
  {
    goto LABEL_38;
  }

  v120 = v40;
  v56 = v38[482];
  v38[403] = v54;
  v57 = sub_16E68C();
  sub_11C120(v57, v58);
  sub_11C1BC();
  if (!(v55 ^ v60 | v59))
  {
    goto LABEL_39;
  }

  if (*(v38 + 482) <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_11BF64();
  if (!v55)
  {
    goto LABEL_41;
  }

  v62 = v38[483];
  v38[404] = v61;
  v144._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v144);

  if ((~v62 & 0x7FF0000000000000) == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (*(v38 + 483) <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_11BF64();
  if (!v55)
  {
    goto LABEL_44;
  }

  v64 = v38[484];
  v38[405] = v63;
  v65 = sub_16E68C();
  sub_11C120(v65, v66);
  if ((~v64 & 0x7FF0000000000000) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (*(v38 + 484) <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_11BF64();
  if (!v55)
  {
    goto LABEL_47;
  }

  v68 = v38[485];
  v38[406] = v67;
  v145._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v145);

  sub_11C1BC();
  if (!(v55 ^ v60 | v59))
  {
    goto LABEL_48;
  }

  if (*(v38 + 485) <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_11BF64();
  if (!v55)
  {
    goto LABEL_50;
  }

  v70 = v38[486];
  v38[407] = v69;
  v71 = sub_16E68C();
  sub_11C120(v71, v72);
  sub_11C1BC();
  if (!(v55 ^ v60 | v59))
  {
    goto LABEL_51;
  }

  v73 = *(v38 + 486);
  if (v73 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v73 >= 9.22337204e18)
  {
LABEL_53:
    __break(1u);
    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  v114 = v38[492];
  v74 = v38[485];
  v112 = v44;
  v75 = v38[484];
  v76 = v38[483];
  v77 = v38[482];
  v78 = v38[481];
  v113 = v38[415];
  v38[408] = v73;
  v146._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v146);

  v127 = v126 & 1;
  v38[97] = v77;
  *(v38 + 784) = 0;
  *(v38 + 785) = *v137;
  *(v38 + 197) = *&v137[3];
  v38[99] = v78;
  *(v38 + 801) = *v138;
  *(v38 + 205) = *&v139[3];
  *(v38 + 817) = *v139;
  *(v38 + 209) = *&v140[3];
  *(v38 + 833) = *v140;
  *(v38 + 213) = *&v141[3];
  *(v38 + 849) = *v141;
  *(v38 + 217) = *(&v142 + 3);
  *(v38 + 865) = v142;
  *(v38 + 800) = 0;
  *(v38 + 201) = *&v138[3];
  v38[101] = v75;
  *(v38 + 259) = *&v137[3];
  *(v38 + 1033) = *v137;
  *(v38 + 816) = 0;
  v38[103] = v76;
  *(v38 + 1049) = *v138;
  *(v38 + 832) = 0;
  *(v38 + 105) = v73;
  *(v38 + 848) = 0;
  v38[107] = v74;
  *(v38 + 1032) = 0;
  *(v38 + 864) = 0;
  v38[109] = v129;
  v38[110] = v39;
  v38[111] = v142;
  v38[112] = v143;
  v38[113] = v120;
  v38[114] = v136;
  v38[115] = v133;
  v38[116] = v131;
  v38[117] = v142;
  v38[118] = v143;
  v38[119] = v124;
  v38[120] = v41;
  v38[121] = v122;
  v38[122] = v42;
  v38[123] = v142;
  v38[124] = v143;
  v38[125] = v43;
  v38[126] = v112;
  *(v38 + 1016) = v127;
  v38[128] = v77;
  v38[130] = v78;
  *(v38 + 1048) = 0;
  *(v38 + 263) = *&v138[3];
  v38[132] = v75;
  *(v38 + 1064) = 0;
  *(v38 + 1065) = *v139;
  *(v38 + 267) = *&v139[3];
  v38[134] = v76;
  *(v38 + 1080) = 0;
  *(v38 + 1081) = *v140;
  *(v38 + 271) = *&v140[3];
  *(v38 + 136) = v73;
  *(v38 + 1096) = 0;
  *(v38 + 1097) = *v141;
  *(v38 + 275) = *&v141[3];
  v38[138] = v74;
  *(v38 + 1112) = 0;
  *(v38 + 1113) = v142;
  *(v38 + 279) = *(&v142 + 3);
  v38[140] = v129;
  v38[141] = v39;
  v38[142] = v142;
  v38[143] = v143;
  v38[144] = v120;
  v38[145] = v136;
  v38[146] = v133;
  v38[147] = v131;
  v38[148] = v142;
  v38[149] = v143;
  v38[150] = v124;
  v38[151] = v41;
  v38[152] = v122;
  v38[153] = v42;
  v38[154] = v142;
  v38[155] = v143;
  v38[156] = v43;
  v38[157] = v112;
  *(v38 + 1264) = v127;
  sub_13E04((v38 + 97), (v38 + 66));
  sub_F6D4((v38 + 128));
  v79 = v113[36];
  sub_2D20(v113 + 32, v113[35]);
  v38[319] = type metadata accessor for WellnessSnippets();
  sub_11C004();
  v38[320] = sub_11B9B4(v80, v81);
  v82 = sub_9910(v38 + 316);
  memcpy(v82, v38 + 97, 0xF1uLL);
  sub_1069FC();
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v83 = swift_allocObject();
  v38[494] = v83;
  *(v83 + 16) = xmmword_170F70;
  *(v83 + 32) = v114;
  v84 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v85 = v114;
  swift_task_alloc();
  sub_179E8();
  v38[495] = v86;
  *v86 = v87;
  v86[1] = sub_115170;
  v88 = v38[453];
  sub_11C360();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_115170()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 3960);
  v6 = *(v4 + 3952);
  v7 = *v0;
  sub_C990();
  *v8 = v7;

  sub_2D64((v2 + 2528));
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_115270()
{
  v1 = *(v0 + 3936);
  v2 = *(v0 + 3624);
  v3 = *(v0 + 3608);
  v4 = *(v0 + 3600);
  sub_8388(v0 + 2568, v0 + 2488);
  sub_387F4();
  v5 = swift_allocObject();
  sub_17464((v0 + 2488), v5 + 16);
  sub_16C73C();
  v6 = sub_16C1DC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 3296) = sub_384FC();
  v13 = sub_16C32C();

  sub_2D64((v0 + 2568));
  v9 = sub_98BD8();
  v10(v9);

  sub_11BB5C();
  sub_11BD94();

  sub_5D948();

  return v11(v13);
}

uint64_t sub_115530()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 3984);
  v3 = *(v1 + 3976);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_115630()
{
  v1 = *(v0 + 3968);
  v50 = *(v0 + 3912);
  v2 = *(v0 + 3896);
  v3 = *(v0 + 3728);
  v45 = *(v0 + 3632);
  v47 = *(v0 + 3904);
  v4 = *(v0 + 3320);
  sub_8388(v0 + 2768, v0 + 2728);
  sub_387F4();
  v5 = swift_allocObject();
  sub_17464((v0 + 2728), v5 + 16);
  sub_16C73C();
  v6 = sub_16C1DC();
  sub_11C1E4(v6);
  v7 = sub_384FC();
  v8 = v4[10];
  sub_2D20(v4 + 6, v4[9]);
  v9 = *(v8 + 16);
  v10 = sub_A76B4();
  v11(v10);
  sub_11C1CC();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_172320;
  *(v0 + 3304) = v7;
  *(v12 + 32) = sub_16C32C();
  sub_3BC6C();
  *(v12 + 40) = sub_16C32C();
  sub_16D6DC();
  swift_allocObject();
  v43 = sub_16D6CC();
  sub_8B48();
  v13 = sub_C9E0();
  v47(v13);
  v14 = sub_16DBDC();
  v15 = sub_16E36C();
  if (sub_4B3A8(v15))
  {
    *sub_1BA38() = 0;
    sub_4B3D0();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    sub_8A2C();
  }

  v21 = *(v0 + 3936);
  v22 = *(v0 + 3728);
  v23 = *(v0 + 3640);
  v24 = *(v0 + 3632);
  v25 = *(v0 + 3624);
  v26 = *(v0 + 3608);
  v27 = *(v0 + 3600);

  v28 = *(v23 + 8);
  v29 = sub_C9E0();
  v30(v29);
  *(v0 + 3272) = v43;
  sub_11B9B4(&qword_1C6868, &type metadata accessor for SequenceFlow);
  v51 = sub_16C32C();

  sub_2D64((v0 + 2768));
  (*(v26 + 8))(v25, v27);
  sub_3BCC0(v0 + 16);

  sub_11BB5C();
  sub_11BBF0();
  v33 = *(v0 + 3480);
  v34 = *(v0 + 3472);
  v35 = *(v0 + 3464);
  v36 = *(v0 + 3456);
  v37 = *(v0 + 3448);
  v38 = *(v0 + 3424);
  v39 = *(v0 + 3416);
  v40 = *(v0 + 3408);
  v41 = *(v0 + 3392);
  v42 = *(v0 + 3384);
  v44 = *(v0 + 3376);
  v46 = *(v0 + 3368);
  v48 = *(v0 + 3352);
  v49 = *(v0 + 3328);

  sub_5D948();

  return v31(v51);
}

uint64_t sub_115AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_11C068();
  sub_11C0EC();
  v55 = v54[489];
  v56 = v54[488];
  v57 = v54[487];
  v58 = v54[465];
  v59 = v54[454];
  sub_1B9B4();
  v60 = sub_38408();
  v56(v60);
  v61 = sub_16DBDC();
  v62 = sub_16E37C();
  if (sub_1BA1C(v62))
  {
    v63 = sub_1BA38();
    sub_1BA50(v63);
    sub_1B9D0(&def_259DC, v64, v65, "Couldn't create dialog for multiple ring query.");
    sub_1BA00();
  }

  v66 = v54[490];
  v67 = v54[465];
  v68 = v54[455];
  v69 = v54[454];
  v70 = v54[415];

  v71 = sub_C9F8();
  v66(v71);
  sub_8284(v70 + 88, (v54 + 259));
  sub_82E0();
  v82 = sub_16C32C();
  sub_8334((v54 + 259));
  sub_11BA8C();
  sub_11BC88(v72);

  sub_11BF74();
  sub_11BFDC();

  return v75(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v82, a51, a52, a53, a54);
}

uint64_t sub_115D90()
{
  sub_C9EC();
  v3 = v2;
  sub_C9D4();
  v5 = v4;
  sub_38388();
  *v6 = v5;
  v8 = *(v7 + 4048);
  v9 = *(v7 + 4040);
  v10 = *v1;
  sub_C990();
  *v11 = v10;
  *(v5 + 4056) = v0;

  if (!v0)
  {
    *(v5 + 4064) = v3;
  }

  sub_8ACC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_115EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_11C068();
  sub_11C0EC();
  v55 = v54[508];
  v56 = v54[480];
  v57 = v54[452];
  v58 = v54[451];
  v76 = v54[450];
  v59 = v54[449];
  v60 = v54[448];
  v61 = v54[447];
  v62 = v54[446];
  v63 = v54[415];
  sub_11C044(v54[445]);
  swift_bridgeObjectRelease_n();
  sub_16C43C();
  (*(v61 + 16))(v60, v59, v62);
  sub_11C01C();
  sub_16C75C();
  (*(v61 + 8))(v59, v62);
  v64 = [v55 patternId];
  sub_16E1BC();

  sub_4B4EC();
  sub_16C76C();
  v65 = v63[15];
  sub_2D20(v63 + 11, v63[14]);
  v54[410] = sub_16C2FC();
  sub_16C28C();
  v77 = sub_16C32C();

  (*(v58 + 8))(v57, v76);

  sub_11BA8C();
  sub_11BC88(v66);

  sub_11BF74();
  sub_11BFDC();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, v76, v77, a51, a52, a53, a54);
}

uint64_t sub_1161E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_11C068();
  sub_11C0EC();
  v55 = v54[507];
  v56 = v54[480];
  v57 = v54[415];
  sub_11C044(v54[445]);

  sub_8284(v57 + 88, (v54 + 199));
  sub_82E0();
  v68 = sub_16C32C();
  sub_8334((v54 + 199));
  sub_11BA8C();
  sub_11BC88(v58);

  sub_11BF74();
  sub_11BFDC();

  return v61(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v68, a51, a52, a53, a54);
}

uint64_t sub_116428()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = *(v4 + 4080);
  *v6 = *v1;

  v8 = *(v4 + 3544);
  if (v0)
  {
  }

  else
  {
    *(v5 + 4088) = v3;
  }

  sub_8748(v8, &qword_1C5800, &unk_16F510);
  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_11658C()
{
  sub_386A8();
  v1[512] = v1[511];
  sub_11C2AC();
  sub_16E23C();

  sub_388E4();
  sub_214C(v3, v4, v5, v0);
  if (v2)
  {
    sub_11C2EC();
    sub_8B9C();
    sub_16E23C();
  }

  sub_11C28C();
  v6 = swift_task_alloc();
  v1[513] = v6;
  *v6 = v1;
  sub_11BF30(v6);

  return sub_3F1C0();
}

uint64_t sub_116658()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = v4[513];
  *v6 = *v1;

  v8 = v4[442];
  v9 = v4[441];
  if (v0)
  {
  }

  else
  {
    v5[514] = v3;
  }

  sub_11C140();
  sub_11C184();
  sub_8ACC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1167D0()
{
  v298 = v0;
  v1 = *(v0 + 4112);
  if (!v1)
  {
    v35 = *(v0 + 3840);

    v36 = 0;
    goto LABEL_17;
  }

  v2 = [v1 dialog];
  *(v0 + 4120) = sub_25908(0, &qword_1C6E48, DialogElement_ptr);
  v3 = sub_16E2CC();

  if (!sub_3B35C(v3))
  {
    v37 = *(v0 + 3840);

LABEL_15:

    goto LABEL_16;
  }

  v4 = sub_11C0A8();
  sub_3B360(v4, v5, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = sub_11C238();
  }

  else
  {
    v6 = *(v3 + 32);
  }

  v7 = v6;
  v8 = *(v0 + 4096);
  v9 = *(v0 + 3488);
  v10 = *(v0 + 3480);
  v11 = *(v0 + 3440);
  v12 = *(v0 + 3432);

  v13 = [v7 fullPrint];

  sub_16E1BC();
  sub_16E23C();

  v14 = *(v11 + 32);
  v15 = sub_387CC();
  v14(v15);
  if (!v8)
  {
    v38 = *(v0 + 3840);
    v39 = sub_11C278();
    v40(v39);
    goto LABEL_15;
  }

  v16 = [*(v0 + 4096) dialog];
  v17 = sub_16E2CC();

  if (!sub_3B35C(v17))
  {
    v61 = *(v0 + 3840);
    v62 = sub_11C278();
    v63(v62);

    goto LABEL_15;
  }

  v18 = sub_11C0A8();
  sub_3B360(v18, v19, v17);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = sub_457FC();
  }

  else
  {
    v20 = *(v17 + 32);
  }

  v21 = v20;
  v22 = *(v0 + 268);
  v23 = *(v0 + 3472);
  v24 = *(v0 + 3464);
  v25 = *(v0 + 3432);

  v26 = [v21 fullPrint];

  sub_16E1BC();
  sub_16E23C();

  v27 = sub_C9E0();
  v14(v27);
  if (v22 & 1) != 0 || (*(v0 + 267))
  {
    v28 = *(v0 + 3840);
    v29 = *(v0 + 3488);
    v30 = *(v0 + 3472);
    v31 = *(v0 + 3440);
    v32 = *(v0 + 3432);

    v33 = *(v31 + 8);
    v34 = sub_C9F8();
    v33(v34);
    (v33)(v29, v32);
LABEL_16:
    v36 = *(v0 + 4112);
LABEL_17:
    v41 = *(v0 + 4024);
    v42 = *(v0 + 4016);
    v43 = *(v0 + 4008);
    v44 = *(v0 + 3648);
    v45 = *(v0 + 3632);
    sub_1B9B4();
    v46 = sub_38408();
    v42(v46);
    v47 = sub_16DBDC();
    v48 = sub_16E37C();
    if (sub_1BA1C(v48))
    {
      v49 = sub_1BA38();
      sub_1BA50(v49);
      sub_1B9D0(&def_259DC, v50, v51, "#GetActivitySummaryFlow: Unable to get the ring unit label");
      sub_1BA00();
    }

    v52 = *(v0 + 4096);
    v53 = *(v0 + 4032);
    v54 = *(v0 + 3648);
    v55 = *(v0 + 3640);
    v56 = *(v0 + 3632);
    v57 = *(v0 + 3320);

    v58 = sub_C9F8();
    v53(v58);
    sub_8284(v57 + 88, v0 + 1912);
    sub_82E0();
    sub_16C32C();

    sub_8334(v0 + 1912);
    sub_11BA8C();
    v267 = *(v0 + 3464);
    v268 = *(v0 + 3456);
    v269 = *(v0 + 3448);
    v270 = *(v0 + 3424);
    v271 = *(v0 + 3416);
    v272 = *(v0 + 3408);
    v274 = *(v0 + 3392);
    v278 = *(v0 + 3384);
    v282 = *(v0 + 3376);
    v285 = *(v0 + 3368);
    v290 = *(v0 + 3352);
    v295 = *(v0 + 3328);

    sub_5D948();
    sub_11C33C();

    __asm { BRAA            X2, X16 }
  }

  v64 = *(v0 + 4024);
  v65 = *(v0 + 4016);
  v66 = *(v0 + 4008);
  v67 = *(v0 + 3696);
  v68 = *(v0 + 3632);
  v69 = *(v0 + 3488);
  v70 = *(v0 + 3456);
  v71 = *(v0 + 3440);
  v72 = *(v0 + 3432);
  sub_1B9B4();
  v73 = sub_38408();
  v65(v73);
  v74 = *(v71 + 16);
  v75 = sub_1069FC();
  v296 = v76;
  v76(v75);
  v77 = sub_16DBDC();
  v78 = sub_16E36C();
  v79 = os_log_type_enabled(v77, v78);
  v80 = *(v0 + 4032);
  v81 = *(v0 + 3696);
  v291 = *(v0 + 3640);
  v82 = *(v0 + 3632);
  v83 = *(v0 + 3456);
  v84 = *(v0 + 3440);
  v85 = *(v0 + 3432);
  if (v79)
  {
    sub_8BD8();
    v283 = v82;
    v86 = sub_A75B8();
    v297[0] = v86;
    *v81 = 136315138;
    v279 = v80;
    v87 = sub_16D5BC();
    v89 = v88;
    v275 = v78;
    v90 = *(v84 + 8);
    v91 = sub_4B364();
    v90(v91);
    v92 = sub_3AB7C(v87, v89, v297);

    *(v81 + 4) = v92;
    sub_11C30C(&def_259DC, v77, v275, "#GetActivitySummaryFlow: Ring unit label is: %s");
    sub_2D64(v86);
    sub_8A2C();
    sub_A76C0();

    v279(v81, v283);
  }

  else
  {

    v90 = *(v84 + 8);
    v93 = sub_4B364();
    v90(v93);
    v80(v81, v82);
  }

  *(v0 + 4128) = v90;
  v94 = *(v0 + 4024);
  v95 = *(v0 + 4016);
  v96 = *(v0 + 4008);
  v97 = *(v0 + 3688);
  v98 = *(v0 + 3632);
  v99 = *(v0 + 3472);
  v100 = *(v0 + 3448);
  v101 = *(v0 + 3432);
  sub_1B9B4();
  v102 = sub_38408();
  v95(v102);
  v103 = sub_1069FC();
  v296(v103);
  v104 = sub_16DBDC();
  v105 = sub_16E36C();
  v106 = sub_84370(v105);
  v107 = *(v0 + 4032);
  v108 = *(v0 + 3688);
  v286 = *(v0 + 3640);
  v292 = v90;
  v109 = *(v0 + 3632);
  v110 = *(v0 + 3448);
  v111 = *(v0 + 3440);
  v112 = *(v0 + 3432);
  if (v106)
  {
    sub_8BD8();
    v280 = v109;
    v113 = sub_A75B8();
    v297[0] = v113;
    *v108 = 136315138;
    v114 = sub_16D5BC();
    v276 = v107;
    v116 = v115;
    v117 = sub_4B364();
    v118(v117);
    v119 = sub_3AB7C(v114, v116, v297);

    *(v108 + 4) = v119;
    sub_11C30C(&def_259DC, v104, v105, "#GetActivitySummaryFlow: Ring label is: %s");
    sub_2D64(v113);
    sub_8A2C();
    sub_A76C0();

    v276(v108, v280);
  }

  else
  {

    v120 = sub_4B364();
    v90(v120);
    v107(v108, v109);
  }

  v121 = *(v0 + 4000);
  v122 = *(v0 + 3992);
  v123 = *(v0 + 3840);
  v124 = *(v0 + 3832);
  v125 = *(v0 + 3424);
  v126 = *(v0 + 3400);
  v273 = *(v0 + 3384);
  v127 = *(v0 + 3352);
  v128 = *(v0 + 3344);
  v277 = *(v0 + 3336);
  v281 = *(v0 + 3488);
  v284 = *(v0 + 3328);
  v287 = *(v0 + 3360);
  v129 = *(v0 + 265);
  (v296)(v125, *(v0 + 3472), *(v0 + 3432));
  v130 = sub_25948(v129);
  v132 = v131;
  v133 = sub_208C0(v129);
  v134 = (v125 + *(v126 + 20));
  *v134 = v130;
  v134[1] = v132;
  v135 = (v125 + *(v126 + 24));
  *v135 = v133;
  v135[1] = v136;
  v137 = sub_8B9C();
  v139 = sub_99F0C(v137, v138, v129, v121);
  v140 = sub_8B9C();
  v142 = sub_99F0C(v140, v141, v129, v122);

  sub_16D4EC();
  sub_16BF4C();
  v143 = sub_16D47C();
  (*(v128 + 8))(v127, v277);
  v144 = sub_16D5BC();
  v146 = v145;
  sub_11BD14();
  sub_11B7BC(v125, v284, v147);
  sub_388E4();
  sub_214C(v148, v149, v150, v126);
  *(v273 + 72) = 0;
  *(v273 + 80) = 0;
  v151 = *(v287 + 44);
  sub_8AB4();
  sub_214C(v152, v153, v154, v126);
  v155 = trunc(v139);
  v156 = *(v0 + 3384);
  if (v139 > -9.22337204e18 && v139 < 9.22337204e18 && v139 == v155)
  {
    *v156 = v139;
  }

  else
  {
    *v156 = 0;
  }

  if (v142 <= -9.22337204e18)
  {
    v160 = 0;
  }

  else
  {
    v159 = v142 == trunc(v142) && v142 < 9.22337204e18;
    v160 = v142;
    if (!v159)
    {
      v160 = 0;
    }
  }

  v161 = *(v0 + 3520);
  v162 = *(v0 + 3432);
  v163 = *(v0 + 3384);
  v164 = *(v0 + 3328);
  v163[1] = v160;
  v163[2] = v143;
  v163[7] = v144;
  v163[8] = v146;
  sub_5FF8C(v164, v273 + v151);
  sub_16D45C();
  v165 = sub_369C(v161, 1, v162);
  v166 = *(v0 + 3520);
  if (v165 == 1)
  {
    sub_8748(*(v0 + 3520), &qword_1C5800, &unk_16F510);
    v167 = 0;
    v168 = 0;
  }

  else
  {
    v169 = *(v0 + 3440);
    v170 = *(v0 + 3432);
    v171 = sub_16D5BC();
    v173 = v172;
    v292(v166, v170);
    *(v0 + 3160) = v171;
    *(v0 + 3168) = v173;
    sub_9854();
    v167 = sub_16E3FC();
    v168 = v174;
  }

  v175 = *(v0 + 3512);
  v176 = *(v0 + 3432);
  v177 = *(v0 + 3384);
  *(v177 + 24) = v167;
  *(v177 + 32) = v168;
  sub_16D46C();
  v178 = sub_369C(v175, 1, v176);
  v179 = *(v0 + 3512);
  if (v178 == 1)
  {
    sub_8748(*(v0 + 3328), &dword_1C63F8, &qword_171800);
    sub_8748(v179, &qword_1C5800, &unk_16F510);
    v180 = 0;
    v181 = 0;
  }

  else
  {
    v182 = *(v0 + 3440);
    v183 = *(v0 + 3432);
    v184 = *(v0 + 3328);
    v180 = sub_16D5BC();
    v181 = v185;
    sub_8748(v184, &dword_1C63F8, &qword_171800);
    v186 = sub_389C0();
    (v292)(v186);
  }

  v187 = *(v0 + 4024);
  v188 = *(v0 + 4016);
  v189 = *(v0 + 4008);
  v190 = *(v0 + 3680);
  v191 = *(v0 + 3632);
  v192 = *(v0 + 3392);
  v193 = *(v0 + 3384);
  v194 = *(v0 + 3376);
  *(v193 + 40) = v180;
  *(v193 + 48) = v181;
  sub_11B758(v193, v192);
  sub_1B9B4();
  v188(v190, v189, v191);
  sub_11BD5C();
  sub_11B7BC(v192, v194, v195);
  v196 = sub_16DBDC();
  v197 = sub_16E36C();
  v198 = sub_84370(v197);
  v199 = *(v0 + 4032);
  v200 = *(v0 + 3680);
  v201 = *(v0 + 3640);
  v202 = *(v0 + 3632);
  v203 = *(v0 + 3376);
  if (v198)
  {
    v204 = *(v0 + 3368);
    v205 = *(v0 + 3360);
    v293 = *(v0 + 4032);
    v206 = sub_8BD8();
    v288 = v200;
    v207 = sub_CA30();
    v297[0] = v207;
    *v206 = 136315138;
    sub_11BD5C();
    sub_11B7BC(v203, v204, v208);
    sub_A76B4();
    sub_16E1EC();
    sub_11BCFC();
    sub_11B818(v203, v209);
    v210 = sub_A76B4();
    v213 = sub_3AB7C(v210, v211, v212);

    *(v206 + 4) = v213;
    sub_11C2CC(&def_259DC, v214, v215, "#GetActivitySummaryFlow: snippet model is %s");
    sub_2D64(v207);
    sub_A76C0();
    sub_89F4();

    v293(v288, v202);
  }

  else
  {

    sub_11BCFC();
    sub_11B818(v203, v216);
    v199(v200, v202);
  }

  v217 = *(v0 + 4024);
  v218 = *(v0 + 4016);
  v219 = *(v0 + 4008);
  v220 = *(v0 + 3672);
  v221 = *(v0 + 3632);
  v222 = *(v0 + 3424);
  v223 = *(v0 + 3416);
  sub_1B9B4();
  v224 = sub_38408();
  v218(v224);
  sub_11BD14();
  v225 = sub_387CC();
  sub_11B7BC(v225, v226, v227);
  v228 = sub_16DBDC();
  v229 = sub_16E36C();
  v230 = sub_84370(v229);
  v231 = *(v0 + 4032);
  v232 = *(v0 + 3672);
  v233 = *(v0 + 3640);
  v234 = *(v0 + 3632);
  v235 = *(v0 + 3416);
  if (v230)
  {
    v236 = *(v0 + 3408);
    v237 = *(v0 + 3400);
    v294 = *(v0 + 4032);
    v238 = sub_8BD8();
    v289 = v232;
    v239 = sub_CA30();
    v297[0] = v239;
    *v238 = 136315138;
    sub_11BD14();
    sub_11B7BC(v235, v236, v240);
    sub_A76B4();
    sub_16E1EC();
    sub_11BCE4();
    sub_11B818(v235, v241);
    v242 = sub_A76B4();
    v245 = sub_3AB7C(v242, v243, v244);

    *(v238 + 4) = v245;
    sub_11C2CC(&def_259DC, v246, v247, "#GetActivitySummaryFlow: snippet header model is %s");
    sub_2D64(v239);
    sub_A76C0();
    sub_89F4();

    v294(v289, v234);
  }

  else
  {

    sub_11BCE4();
    sub_11B818(v235, v248);
    v231(v232, v234);
  }

  v249 = *(v0 + 3504);
  v250 = *(v0 + 3496);
  v251 = *(v0 + 3488);
  v252 = *(v0 + 3432);
  v253 = *(v0 + 3392);
  v254 = *(*(v0 + 3320) + 296);
  sub_208C0(*(v0 + 265));
  sub_16E23C();

  sub_388E4();
  sub_214C(v255, v256, v257, v252);
  sub_118D44(*v253);
  sub_118D44(v253[1]);
  v258 = sub_C9E0();
  v296(v258);
  sub_388E4();
  sub_214C(v259, v260, v261, v252);
  v262 = swift_task_alloc();
  *(v0 + 4136) = v262;
  *v262 = v0;
  v262[1] = sub_11777C;
  v263 = *(v0 + 266);
  v264 = *(v0 + 3496);
  sub_C98D8(*(v0 + 3504));
  sub_11C33C();

  return sub_B04A4();
}

uint64_t sub_11777C()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = v4[517];
  *v6 = *v1;

  v8 = v4[438];
  v9 = v4[437];
  if (v0)
  {
  }

  else
  {
    v5[518] = v3;
  }

  sub_11C140();
  sub_11C184();
  sub_8ACC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1178F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void (*a48)(uint64_t, uint64_t), uint64_t a49, uint64_t *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t *a60, uint64_t a61, uint64_t a62)
{
  sub_11C068();
  a61 = v66;
  a62 = v67;
  sub_11C0EC();
  a60 = v62;
  v68 = v62[518];
  v62[519] = v68;
  v69 = v62[503];
  v70 = v62[502];
  v71 = v62[501];
  v72 = v62[458];
  v73 = v62[454];
  sub_1B9B4();
  v70(v72, v71, v73);
  v74 = v68;
  v75 = sub_16DBDC();
  v76 = sub_16E36C();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = sub_8BD8();
    v122 = sub_CA30();
    a50 = v122;
    *v77 = 136315138;
    if (v74)
    {
      v78 = v62[515];
      v79 = [v74 dialog];
      v80 = sub_16E2CC();

      if (sub_3B35C(v80))
      {
        sub_3B360(0, (v80 & 0xC000000000000001) == 0, v80);
        if ((v80 & 0xC000000000000001) != 0)
        {
          v81 = sub_457FC();
        }

        else
        {
          v81 = *(v80 + 32);
        }

        v82 = v81;

        v83 = [v82 fullPrint];

        v84 = sub_16E1BC();
        v65 = v85;

LABEL_13:
        a47 = v62[458];
        a48 = v62[504];
        v63 = v62[455];
        v64 = v62[454];
        v62[397] = v84;
        v62[398] = v65;
        sub_2440(&qword_1C69C8, &qword_174150);
        v100 = sub_16E3DC();
        v102 = v101;

        v103 = sub_3AB7C(v100, v102, &a50);

        *(v77 + 4) = v103;
        _os_log_impl(&def_259DC, v75, v76, "#GetActivitySummaryFlow: dialog is %s", v77, 0xCu);
        sub_2D64(v122);
        sub_8A2C();
        sub_89F4();

        a48(a47, v64);
        if (!v74)
        {
          goto LABEL_14;
        }

        goto LABEL_8;
      }
    }

    v84 = 0;
    v65 = 0;
    goto LABEL_13;
  }

  v77 = v62[504];
  v86 = v62[458];
  v87 = v62[455];
  v88 = v62[454];

  v89 = sub_389C0();
  (v77)(v89);
  if (!v74)
  {
LABEL_14:
    sub_11C034();
    v104 = v62[457];
    v105 = v62[454];
    sub_1B9B4();
    v106 = sub_38408();
    (v77)(v106);
    sub_16DBDC();
    v107 = sub_16E37C();
    if (sub_1BA1C(v107))
    {
      v108 = sub_1BA38();
      sub_1BA50(v108);
      sub_1B9D0(&def_259DC, v109, v110, "Couldn't create activity summary dialog");
      sub_1BA00();
    }

    sub_11BF84();
    v111 = sub_4B4EC();
    v63(v111);
    sub_8284(v64 + 88, (v62 + 159));
    sub_82E0();
    v123 = sub_16C32C();

    sub_8334((v62 + 159));
    sub_11BCFC();
    sub_11B818(a43, v112);
    sub_11BCE4();
    sub_11B818(a45, v113);
    v65(a47, v105);
    v65(a48, v105);
    sub_11BB5C();
    sub_11BBF0();
    sub_11BEC8();

    sub_5D948();
    sub_11BFDC();

    return v116(v114, v115, v116, v117, v118, v119, v120, v121, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, v123, a50, a51, a52, a53, a54);
  }

LABEL_8:
  v90 = v62[424];
  v62[304] = type metadata accessor for WellnessSnippets();
  sub_11C004();
  v62[305] = sub_11B9B4(v91, v92);
  sub_9910(v62 + 301);
  sub_11BD5C();
  v93 = sub_389C0();
  sub_11B7BC(v93, v94, v95);
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v62[520] = v96;
  *v96 = v97;
  v96[1] = sub_117ED4;
  sub_11BFDC();

  return sub_672C0();
}

uint64_t sub_117ED4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 4160);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 2408));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_117FB8()
{
  v1 = *(v0 + 4152);
  v2 = *(v0 + 4128);
  v3 = *(v0 + 4112);
  v4 = *(v0 + 4096);
  v15 = *(v0 + 3472);
  v16 = *(v0 + 3488);
  v5 = *(v0 + 3432);
  v13 = *(v0 + 3424);
  v14 = *(v0 + 3440);
  v6 = *(v0 + 3392);
  sub_8388(v0 + 2688, v0 + 2448);
  sub_387F4();
  v7 = swift_allocObject();
  sub_17464((v0 + 2448), v7 + 16);
  sub_16C73C();
  v8 = sub_16C1DC();
  sub_11C1E4(v8);
  *(v0 + 3288) = sub_384FC();
  v17 = sub_16C32C();

  sub_2D64((v0 + 2688));
  sub_11BCFC();
  sub_11B818(v6, v9);
  sub_11BCE4();
  sub_11B818(v13, v10);
  v2(v15, v5);
  v2(v16, v5);

  sub_11BB5C();
  sub_11BD94();

  sub_5D948();

  return v11(v17);
}

uint64_t sub_1182C8()
{
  sub_386A8();
  *(v1 + 4096) = 0;
  sub_11C2AC();
  sub_16E23C();

  sub_388E4();
  sub_214C(v3, v4, v5, v0);
  if (v2)
  {
    sub_11C2EC();
    sub_8B9C();
    sub_16E23C();
  }

  sub_11C28C();
  v6 = swift_task_alloc();
  *(v1 + 4104) = v6;
  *v6 = v1;
  sub_11BF30(v6);

  return sub_3F1C0();
}

uint64_t sub_118390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_11C068();
  sub_11C0EC();
  v56 = v54[480];

  sub_11C034();
  v57 = v54[456];
  v58 = v54[454];
  sub_1B9B4();
  v59 = sub_38408();
  v55(v59);
  v60 = sub_16DBDC();
  v61 = sub_16E37C();
  if (sub_1BA1C(v61))
  {
    v62 = sub_1BA38();
    sub_1BA50(v62);
    sub_1B9D0(&def_259DC, v63, v64, "#GetActivitySummaryFlow: Unable to get the ring unit label");
    sub_1BA00();
  }

  v65 = v54[512];
  v66 = v54[504];
  v67 = v54[456];
  v68 = v54[455];
  v69 = v54[454];
  v70 = v54[415];

  v71 = sub_C9F8();
  v66(v71);
  sub_8284(v70 + 88, (v54 + 239));
  sub_82E0();
  v82 = sub_16C32C();

  sub_8334((v54 + 239));
  sub_11BA8C();
  sub_11BC88(v72);

  sub_11BF74();
  sub_11BFDC();

  return v75(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v82, a51, a52, a53, a54);
}

uint64_t sub_118638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  sub_11C068();
  a61 = v67;
  a62 = v68;
  sub_11C0EC();
  a60 = v62;
  *(v62 + 4152) = 0;
  sub_11C034();
  v69 = *(v62 + 3664);
  v70 = *(v62 + 3632);
  sub_1B9B4();
  v71 = sub_38408();
  v63(v71);
  v72 = sub_16DBDC();
  v73 = sub_16E36C();
  if (sub_84370(v73))
  {
    v74 = sub_8BD8();
    v64 = sub_CA30();
    *v74 = 136315138;
    v103 = *(v62 + 4032);
    a50 = v64;
    v75 = *(v62 + 3664);
    v66 = *(v62 + 3640);
    v76 = *(v62 + 3632);
    *(v62 + 3176) = 0u;
    sub_2440(&qword_1C69C8, &qword_174150);
    v77 = sub_16E3DC();
    v65 = v78;

    v79 = sub_3AB7C(v77, v65, &a50);

    *(v74 + 4) = v79;
    _os_log_impl(&def_259DC, v72, v73, "#GetActivitySummaryFlow: dialog is %s", v74, 0xCu);
    sub_2D64(v64);
    sub_8A2C();
    sub_8A2C();

    v80 = sub_4B4EC();
    v103(v80);
  }

  else
  {
    v81 = *(v62 + 4032);
    v82 = *(v62 + 3664);
    v75 = *(v62 + 3640);
    v83 = *(v62 + 3632);

    v81(v82, v83);
  }

  sub_11C034();
  v84 = *(v62 + 3656);
  v85 = *(v62 + 3632);
  sub_1B9B4();
  v86 = sub_38408();
  v75(v86);
  sub_16DBDC();
  v87 = sub_16E37C();
  if (sub_1BA1C(v87))
  {
    v88 = sub_1BA38();
    sub_1BA50(v88);
    sub_1B9D0(&def_259DC, v89, v90, "Couldn't create activity summary dialog");
    sub_1BA00();
  }

  sub_11BF84();
  v91 = sub_4B4EC();
  (v64)(v91);
  sub_8284(v65 + 88, v62 + 1272);
  sub_82E0();
  v104 = sub_16C32C();

  sub_8334(v62 + 1272);
  sub_11BCFC();
  sub_11B818(a43, v92);
  sub_11BCE4();
  sub_11B818(a45, v93);
  v66(a47, v85);
  v66(a48, v85);
  sub_11BB5C();
  sub_11BBF0();
  sub_11BEC8();

  sub_5D948();
  sub_11BFDC();

  return v96(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, v104, a50, a51, a52, a53, a54);
}

uint64_t sub_118A5C(unsigned __int8 a1, double a2, double a3, double a4)
{
  if (!a1 || a1 == 199)
  {
    v7 = a2 == 0.0;
    if (a3 == 0.0)
    {
      v7 = 1;
    }

    return a4 == 0.0 || v7;
  }

  else
  {
    v4 = a2 == 0.0;
    v5 = a4 == 0.0;
    if (a1 != 4)
    {
      v5 = 0;
    }

    if (a1 != 91)
    {
      v4 = v5;
    }

    if (a1 == 90)
    {
      return a3 == 0.0;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_118ABC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v37 = a4;
  v9 = sub_16BF5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2440(&qword_1C5800, &unk_16F510);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v36 - v19;
  sub_208C0(a2);
  sub_16E23C();

  v21 = sub_16D5CC();
  sub_214C(v20, 0, 1, v21);
  v22 = type metadata accessor for WellnessQueryingRingsParameters(0);
  sub_8640(v20, a1 + v22[5]);
  sub_16D4EC();
  sub_16BF4C();
  v23 = sub_16D47C();
  (*(v10 + 8))(v13, v9);
  v24 = v22[6];
  v25 = *(a1 + v24);

  *(a1 + v24) = v23;
  v26 = *a3;
  v27 = *(a3 + 8);
  v28 = v37;
  v29 = v38;
  if ((v27 & 1) == 0)
  {
    v26 = sub_99F0C(v37, v38, a2, v26);
  }

  v30 = a1 + v22[11];
  *v30 = v26;
  *(v30 + 8) = v27;
  v31 = *v39;
  v32 = *(v39 + 8);
  if ((v32 & 1) == 0)
  {
    v31 = sub_99F0C(v28, v29, a2, v31);
  }

  v33 = a1 + v22[8];
  *v33 = v31;
  *(v33 + 8) = v32;
  if (v29)
  {
    sub_16E23C();
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  sub_214C(v18, v34, 1, v21);
  return sub_8640(v18, a1 + v22[12]);
}

uint64_t sub_118D44(uint64_t result)
{
  v1 = result;
  if (result >= 9.22337204e18)
  {
    *&result = 0.0;
    return result;
  }

  if ((~*&v1 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1 == result)
  {
    *&result = result;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_118DA0()
{
  sub_8A88();
  *(v1 + 592) = v2;
  *(v1 + 200) = v3;
  *(v1 + 208) = v0;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  v6 = sub_16DBEC();
  *(v1 + 216) = v6;
  sub_888C(v6);
  *(v1 + 224) = v7;
  v9 = *(v8 + 64);
  *(v1 + 232) = sub_8C38();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  v12 = *(v11 + 64);
  *(v1 + 288) = sub_8C38();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  v13 = sub_17960();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_118F20()
{
  sub_8A88();
  v1 = v0[44];
  v0[45] = *(v0[26] + 304);
  sub_11C250();
  sub_16E23C();
  v0[46] = sub_16D5CC();
  sub_388E4();
  sub_214C(v2, v3, v4, v5);
  v6 = swift_task_alloc();
  v0[47] = v6;
  *v6 = v0;
  v6[1] = sub_118FE8;
  sub_C98D8(v0[44]);

  return sub_3E5F0();
}

uint64_t sub_118FE8()
{
  sub_386A8();
  v2 = *v1;
  sub_38388();
  *v4 = v3;
  v5 = *(v2 + 376);
  v6 = *v1;
  *(v3 + 384) = v7;

  v8 = *(v2 + 352);
  if (v0)
  {
  }

  sub_8748(v8, &qword_1C5800, &unk_16F510);
  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_119148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v19 = [*(v18 + 384) dialog];
  *(v18 + 392) = sub_25908(0, &qword_1C6E48, DialogElement_ptr);
  v20 = sub_16E2CC();

  if (sub_3B35C(v20))
  {
    v21 = sub_11C0A8();
    sub_3B360(v21, v22, v20);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = sub_457FC();
    }

    else
    {
      v23 = *(v20 + 32);
    }

    v24 = v23;
    v25 = *(v18 + 368);
    v26 = *(v18 + 344);

    v27 = [v24 fullPrint];

    v28 = sub_16E1BC();
    v30 = v29;

    *(v18 + 400) = v28;
    *(v18 + 408) = v30;
    sub_16E23C();
    sub_388E4();
    sub_214C(v31, v32, v33, v25);
    v34 = swift_task_alloc();
    *(v18 + 416) = v34;
    *v34 = v18;
    sub_11C1D8(v34);
    sub_C98D8(*(v18 + 344));
    sub_5DFC8();

    return sub_3E5F0();
  }

  else
  {
    v37 = *(v18 + 384);

    v39 = *(v18 + 224);
    v38 = *(v18 + 232);
    v40 = *(v18 + 216);
    sub_16DBBC();
    sub_8B48();
    v41 = sub_3BD68();
    v42(v41);
    v43 = sub_16DBDC();
    v44 = sub_16E37C();
    v45 = sub_A763C(v44);
    v47 = *(v18 + 224);
    v46 = *(v18 + 232);
    v48 = *(v18 + 216);
    if (v45)
    {
      v49 = sub_1BA38();
      sub_11BFF8(v49);
      sub_11BD74(&def_259DC, v50, v51, "Couldn't create exercise label by executing cat.");
      sub_89F4();
    }

    v52 = sub_98BD8();
    v53(v52);
    sub_11BB90();

    sub_11BBD4();
    sub_5DFC8();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1193FC()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 416);
  *v4 = *v1;
  v3[53] = v7;

  if (v0)
  {
    v8 = v3[51];
    v9 = v3[43];

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v3[43], &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_11954C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v20 = *(v19 + 392);
  v21 = [*(v19 + 424) dialog];
  v22 = sub_11C324();

  if (sub_3B35C(v22))
  {
    sub_4595C();
    if (v20)
    {
      v23 = sub_11C238();
    }

    else
    {
      v23 = *(v22 + 32);
    }

    v24 = v23;
    v25 = *(v19 + 368);
    v26 = *(v19 + 336);
    v27 = *(v19 + 592);

    v28 = [v24 fullPrint];

    v29 = sub_16E1BC();
    v31 = v30;

    *(v19 + 432) = v29;
    *(v19 + 440) = v31;
    sub_16E23C();

    sub_388E4();
    sub_214C(v32, v33, v34, v25);
    v35 = swift_task_alloc();
    *(v19 + 448) = v35;
    *v35 = v19;
    sub_11C1D8(v35);
    sub_C98D8(*(v19 + 336));
    sub_5DFC8();

    return sub_3E5F0();
  }

  else
  {
    v38 = *(v19 + 424);
    v39 = *(v19 + 408);

    v40 = *(v19 + 240);
    v41 = *(v19 + 216);
    v42 = *(v19 + 224);
    sub_16DBBC();
    sub_8B48();
    v43 = sub_3BD68();
    v44(v43);
    v45 = sub_16DBDC();
    v46 = sub_16E37C();
    v47 = sub_A763C(v46);
    v48 = *(v19 + 384);
    v49 = *(v19 + 240);
    v50 = *(v19 + 216);
    v51 = *(v19 + 224);
    if (v47)
    {
      v52 = sub_1BA38();
      sub_11BFF8(v52);
      sub_11BD74(&def_259DC, v53, v54, "Couldn't create move label by executing cat.");
      sub_89F4();
    }

    v55 = sub_98BD8();
    v56(v55);
    sub_11BB90();

    sub_11BBD4();
    sub_5DFC8();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_119810()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 448);
  *v4 = *v1;
  v3[57] = v7;

  if (v0)
  {
    v8 = v3[55];
    v9 = v3[51];
    v10 = v3[42];

    sub_8748(v10, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v3[42], &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_11996C()
{
  v92 = v1;
  v4 = *(v1 + 392);
  v5 = [*(v1 + 456) dialog];
  v6 = sub_11C324();

  if (!sub_3B35C(v6))
  {
    v33 = *(v1 + 456);
    v34 = *(v1 + 440);
    v35 = *(v1 + 408);

    v36 = *(v1 + 248);
    v37 = *(v1 + 216);
    v38 = *(v1 + 224);
    sub_16DBBC();
    sub_8B48();
    v39 = sub_3BD68();
    v40(v39);
    v41 = sub_16DBDC();
    v42 = sub_16E37C();
    sub_A763C(v42);
    sub_11C264();
    if (v43)
    {
      v44 = sub_1BA38();
      sub_11BFF8(v44);
      sub_11BD74(&def_259DC, v45, v46, "Couldn't create stand label by executing cat.");
      sub_89F4();
    }

    v47 = sub_98BD8();
    v48(v47);
    v50 = *(v1 + 344);
    v49 = *(v1 + 352);
    v52 = *(v1 + 328);
    v51 = *(v1 + 336);
    v54 = *(v1 + 312);
    v53 = *(v1 + 320);
    v56 = *(v1 + 296);
    v55 = *(v1 + 304);
    v57 = *(v1 + 288);
    v80 = *(v1 + 280);
    v81 = *(v1 + 272);
    v82 = *(v1 + 264);
    v84 = *(v1 + 256);
    v86 = *(v1 + 248);
    v88 = *(v1 + 240);
    v90 = *(v1 + 232);
    v58 = *(v1 + 184);

    sub_11BBD4();
    sub_5E1A0();

    __asm { BRAA            X1, X16 }
  }

  sub_4595C();
  if (v4)
  {
    v7 = sub_11C238();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;
  v9 = *(v1 + 440);
  v10 = *(v1 + 408);
  v11 = *(v1 + 280);
  v12 = *(v1 + 216);
  v13 = *(v1 + 224);

  v14 = [v8 fullPrint];

  v15 = sub_16E1BC();
  v17 = v16;

  *(v1 + 464) = v15;
  *(v1 + 472) = v17;
  *(v1 + 480) = sub_16DBBC();
  sub_8B48();
  *(v1 + 488) = *(v13 + 16);
  *(v1 + 496) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18 = sub_4B364();
  v19(v18);

  v20 = sub_16DBDC();
  v21 = sub_16E36C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v1 + 440);
    v23 = *(v1 + 400);
    v24 = *(v1 + 408);
    v83 = *(v1 + 432);
    v85 = *(v1 + 224);
    v87 = *(v1 + 216);
    v89 = *(v1 + 280);
    v25 = sub_CA30();
    v91 = swift_slowAlloc();
    *v25 = 136315650;

    v26 = sub_387CC();
    v29 = sub_3AB7C(v26, v27, v28);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;

    v30 = sub_3AB7C(v83, v22, &v91);

    *(v25 + 14) = v30;
    *(v25 + 22) = 2080;

    v31 = sub_3AB7C(v15, v17, &v91);

    *(v25 + 24) = v31;
    _os_log_impl(&def_259DC, v20, v21, "Got exercise label (%s), move label (%s), and stand label (%s)", v25, 0x20u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v32 = *(v85 + 8);
    v32(v89, v87);
  }

  else
  {
    v61 = *(v1 + 280);
    v62 = *(v1 + 216);
    v63 = *(v1 + 224);

    v32 = *(v63 + 8);
    v64 = sub_C9F8();
    (v32)(v64);
  }

  *(v1 + 504) = v32;
  v65 = *(v1 + 368);
  v67 = *(v1 + 320);
  v66 = *(v1 + 328);
  v69 = *(v1 + 192);
  v68 = *(v1 + 200);
  sub_11C250();
  sub_16E23C();
  sub_388E4();
  sub_214C(v70, v71, v72, v65);
  sub_1069FC();
  sub_16E23C();
  sub_388E4();
  sub_214C(v73, v74, v75, v65);
  v76 = swift_task_alloc();
  *(v1 + 512) = v76;
  *v76 = v1;
  sub_11C1D8(v76);
  v77 = *(v1 + 320);
  sub_C98D8(*(v1 + 328));
  sub_5E1A0();

  return sub_3F924();
}

uint64_t sub_119E60()
{
  sub_C9EC();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 512);
  *v4 = *v1;
  v3[65] = v7;

  if (v0)
  {
    v8 = v3[59];
    v9 = v3[55];
    v10 = v3[51];
    v13 = v3 + 40;
    v11 = v3[40];
    v12 = v13[1];

    v14 = sub_38408();
    sub_8748(v14, v15, v16);
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    v17 = v3[41];
    sub_8748(v3[40], &qword_1C5800, &unk_16F510);
    sub_11C200();
  }

  sub_8ACC();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_119FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v23 = *(v19 + 392);
  v24 = [*(v19 + 520) dialog];
  v25 = sub_11C324();

  if (sub_3B35C(v25))
  {
    sub_4595C();
    if (v23)
    {
      v26 = sub_11C238();
    }

    else
    {
      v26 = *(v25 + 32);
    }

    v27 = v26;
    v28 = *(v19 + 368);
    v29 = *(v19 + 304);
    v30 = *(v19 + 312);
    v32 = *(v19 + 192);
    v31 = *(v19 + 200);

    v33 = [v27 fullPrint];

    v34 = sub_16E1BC();
    v36 = v35;

    *(v19 + 528) = v34;
    *(v19 + 536) = v36;
    sub_16E23C();
    sub_388E4();
    sub_214C(v37, v38, v39, v28);
    sub_16E23C();
    sub_388E4();
    sub_214C(v40, v41, v42, v28);
    v43 = swift_task_alloc();
    *(v19 + 544) = v43;
    *v43 = v19;
    sub_11C1D8(v43);
    v44 = *(v19 + 304);
    sub_C98D8(*(v19 + 312));
    sub_5DFC8();

    return sub_3F924();
  }

  else
  {
    v47 = *(v19 + 520);
    v48 = *(v19 + 472);
    v49 = *(v19 + 440);
    v50 = *(v19 + 408);

    sub_11C178();
    v51 = *(v19 + 256);
    v52 = *(v19 + 216);
    sub_1B9B4();
    v53 = sub_38408();
    (v47)(v53);
    v54 = sub_16DBDC();
    v55 = sub_16E37C();
    sub_A763C(v55);
    sub_11C15C();
    if (v56)
    {
      v57 = sub_1BA38();
      a15 = v47;
      sub_11BFF8(v57);
      sub_11BD74(&def_259DC, v58, v59, "Couldn't create exercise unit label by executing unit_Label cat for multiple ring query.");
      sub_8A2C();
    }

    v60 = sub_C9F8();
    (v47)(v60);
    sub_11BB90();

    sub_11BBD4();
    sub_5DFC8();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_11A2D4()
{
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 544);
  *v4 = *v1;
  v3[69] = v7;

  if (v0)
  {
    v8 = v3[67];
    v9 = v3[59];
    v10 = v3[55];
    v11 = v3[51];
    v14 = v3 + 38;
    v12 = v3[38];
    v13 = v14[1];

    v15 = sub_38408();
    sub_8748(v15, v16, v17);
    sub_8748(v13, &qword_1C5800, &unk_16F510);
  }

  else
  {
    v18 = v3[39];
    sub_8748(v3[38], &qword_1C5800, &unk_16F510);
    sub_11C200();
  }

  sub_8ACC();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_11A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t), void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v22 = *(v19 + 392);
  v23 = [*(v19 + 552) dialog];
  v24 = sub_11C324();

  if (sub_3B35C(v24))
  {
    sub_4595C();
    if (v22)
    {
      v25 = sub_11C238();
    }

    else
    {
      v25 = *(v24 + 32);
    }

    v26 = v25;
    v27 = *(v19 + 368);
    v28 = *(v19 + 288);
    v29 = *(v19 + 296);
    v31 = *(v19 + 192);
    v30 = *(v19 + 200);

    v32 = [v26 fullPrint];

    v33 = sub_16E1BC();
    v35 = v34;

    *(v19 + 560) = v33;
    *(v19 + 568) = v35;
    sub_16E23C();
    sub_388E4();
    sub_214C(v36, v37, v38, v27);
    sub_16E23C();
    sub_388E4();
    sub_214C(v39, v40, v41, v27);
    v42 = swift_task_alloc();
    *(v19 + 576) = v42;
    *v42 = v19;
    sub_11C1D8(v42);
    v43 = *(v19 + 288);
    sub_C98D8(*(v19 + 296));
    sub_5DFC8();

    return sub_3F924();
  }

  else
  {
    v46 = *(v19 + 552);
    v47 = *(v19 + 536);
    v48 = *(v19 + 472);
    v49 = *(v19 + 440);
    v50 = *(v19 + 408);

    sub_11C178();
    v51 = *(v19 + 264);
    v52 = *(v19 + 216);
    sub_1B9B4();
    v53 = sub_38408();
    v50(v53);
    v54 = sub_16DBDC();
    v55 = sub_16E37C();
    sub_A763C(v55);
    sub_11C084();
    if (v56)
    {
      v57 = sub_1BA38();
      a14 = v50;
      sub_11BFF8(v57);
      sub_11BD74(&def_259DC, v58, v59, "Couldn't create move unit label by executing unit_Label cat for multiple ring query.");
      sub_8A2C();
    }

    v60 = sub_C9F8();
    v50(v60);
    sub_11BB90();

    sub_11BBD4();
    sub_5DFC8();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_11A778()
{
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 576);
  *v4 = *v1;
  v3[73] = v7;

  if (v0)
  {
    v8 = v3[71];
    v9 = v3[67];
    v10 = v3[59];
    v11 = v3[55];
    v12 = v3[51];
    v15 = v3 + 36;
    v13 = v3[36];
    v14 = v15[1];

    v16 = sub_38408();
    sub_8748(v16, v17, v18);
    sub_8748(v14, &qword_1C5800, &unk_16F510);
  }

  else
  {
    v19 = v3[37];
    sub_8748(v3[36], &qword_1C5800, &unk_16F510);
    sub_11C200();
  }

  sub_8ACC();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_11A928()
{
  v1 = *(v0 + 392);
  v2 = [*(v0 + 584) dialog];
  v3 = sub_16E2CC();

  if (sub_3B35C(v3))
  {
    v4 = sub_11C0A8();
    sub_3B360(v4, v5, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_457FC();
    }

    else
    {
      v6 = *(v3 + 32);
    }

    v7 = v6;
    v8 = *(v0 + 584);
    v9 = *(v0 + 552);
    v69 = *(v0 + 568);
    v71 = *(v0 + 536);
    v10 = *(v0 + 520);
    v66 = *(v0 + 472);
    v11 = *(v0 + 456);
    v12 = *(v0 + 424);
    v67 = *(v0 + 440);
    v68 = *(v0 + 408);
    v13 = *(v0 + 384);

    v14 = [v7 fullPrint];

    v15 = sub_16E1BC();
    v64 = v16;
    v65 = v15;

    v62 = *(v0 + 560);
    v63 = *(v0 + 528);
    v17 = *(v0 + 464);
    v59 = v17;
    v60 = *(v0 + 432);
    v61 = *(v0 + 400);
  }

  else
  {
    v18 = *(v0 + 584);
    v19 = *(v0 + 568);
    v20 = *(v0 + 536);
    v21 = *(v0 + 472);
    v22 = *(v0 + 440);
    v23 = *(v0 + 408);

    sub_11C178();
    v24 = *(v0 + 272);
    v25 = *(v0 + 216);
    sub_1B9B4();
    v26 = sub_38408();
    v22(v26);
    v27 = sub_16DBDC();
    v28 = sub_16E37C();
    v29 = sub_A763C(v28);
    v30 = *(v0 + 552);
    v31 = *(v0 + 520);
    v32 = *(v0 + 504);
    v33 = *(v0 + 456);
    v34 = *(v0 + 424);
    v35 = *(v0 + 384);
    v36 = *(v0 + 224);
    v70 = *(v0 + 216);
    v72 = *(v0 + 272);
    if (v29)
    {
      v37 = sub_1BA38();
      sub_11BFF8(v37);
      sub_11BD74(&def_259DC, v38, v39, "Couldn't create stand unit label by executing unit_Label cat for multiple ring query.");
      sub_89F4();
    }

    v32(v72, v70);
    v61 = 0;
    v68 = 0;
    v63 = 0;
    v71 = 0;
    v60 = 0;
    v67 = 0;
    v62 = 0;
    v69 = 0;
    v59 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
  }

  v41 = *(v0 + 344);
  v40 = *(v0 + 352);
  v43 = *(v0 + 328);
  v42 = *(v0 + 336);
  v45 = *(v0 + 312);
  v44 = *(v0 + 320);
  v46 = *(v0 + 296);
  v47 = *(v0 + 304);
  v48 = *(v0 + 288);
  v52 = *(v0 + 280);
  v53 = *(v0 + 272);
  v54 = *(v0 + 264);
  v55 = *(v0 + 256);
  v56 = *(v0 + 248);
  v57 = *(v0 + 240);
  v58 = *(v0 + 232);
  v49 = *(v0 + 184);

  *v49 = v61;
  v49[1] = v68;
  v49[2] = v63;
  v49[3] = v71;
  v49[4] = v60;
  v49[5] = v67;
  v49[6] = v62;
  v49[7] = v69;
  v49[8] = v59;
  v49[9] = v66;
  v49[10] = v65;
  v49[11] = v64;
  sub_C9BC();

  return v50();
}

uint64_t sub_11ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v20 = v18[28];
  v19 = v18[29];
  v21 = v18[27];
  sub_16DBBC();
  sub_8B48();
  v22 = sub_3BD68();
  v23(v22);
  v24 = sub_16DBDC();
  v25 = sub_16E37C();
  v26 = sub_A763C(v25);
  v28 = v18[28];
  v27 = v18[29];
  v29 = v18[27];
  if (v26)
  {
    v30 = sub_1BA38();
    sub_11BFF8(v30);
    sub_11BD74(&def_259DC, v31, v32, "Couldn't create exercise label by executing cat.");
    sub_89F4();
  }

  v33 = sub_98BD8();
  v34(v33);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_11AE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v19 = v18[30];
  v20 = v18[27];
  v21 = v18[28];
  sub_16DBBC();
  sub_8B48();
  v22 = sub_3BD68();
  v23(v22);
  v24 = sub_16DBDC();
  v25 = sub_16E37C();
  v26 = sub_A763C(v25);
  v27 = v18[48];
  v28 = v18[30];
  v29 = v18[27];
  v30 = v18[28];
  if (v26)
  {
    v31 = sub_1BA38();
    sub_11BFF8(v31);
    sub_11BD74(&def_259DC, v32, v33, "Couldn't create move label by executing cat.");
    sub_89F4();
  }

  v34 = sub_98BD8();
  v35(v34);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_11AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v21 = v18[31];
  v22 = v18[27];
  v23 = v18[28];
  sub_16DBBC();
  sub_8B48();
  v24 = sub_3BD68();
  v25(v24);
  v26 = sub_16DBDC();
  v27 = sub_16E37C();
  sub_A763C(v27);
  sub_11C264();
  if (v28)
  {
    v29 = sub_1BA38();
    sub_11BFF8(v29);
    sub_11BD74(&def_259DC, v30, v31, "Couldn't create stand label by executing cat.");
    sub_89F4();
  }

  v32 = sub_98BD8();
  v33(v32);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_11B0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t), uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  sub_11C178();
  v23 = *(v18 + 256);
  v24 = *(v18 + 216);
  sub_1B9B4();
  v25 = sub_38408();
  v19(v25);
  v26 = sub_16DBDC();
  v27 = sub_16E37C();
  sub_A763C(v27);
  sub_11C15C();
  if (v28)
  {
    v29 = sub_1BA38();
    a15 = v19;
    sub_11BFF8(v29);
    sub_11BD74(&def_259DC, v30, v31, "Couldn't create exercise unit label by executing unit_Label cat for multiple ring query.");
    sub_8A2C();
  }

  v32 = sub_C9F8();
  v19(v32);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_11B240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t), void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  sub_11C178();
  v23 = *(v18 + 264);
  v24 = *(v18 + 216);
  sub_1B9B4();
  v25 = sub_38408();
  v19(v25);
  v26 = sub_16DBDC();
  v27 = sub_16E37C();
  sub_A763C(v27);
  sub_11C084();
  if (v28)
  {
    v29 = sub_1BA38();
    a14 = v19;
    sub_11BFF8(v29);
    sub_11BD74(&def_259DC, v30, v31, "Couldn't create move unit label by executing unit_Label cat for multiple ring query.");
    sub_8A2C();
  }

  v32 = sub_C9F8();
  v19(v32);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_11B3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  sub_11C178();
  v20 = v18[34];
  v21 = v18[27];
  sub_1B9B4();
  v22 = sub_38408();
  v19(v22);
  v23 = sub_16DBDC();
  v24 = sub_16E37C();
  v25 = sub_A763C(v24);
  v26 = v18[69];
  v27 = v18[65];
  v28 = v18[63];
  v29 = v18[57];
  v30 = v18[53];
  v31 = v18[48];
  v46 = v27;
  v47 = v18[34];
  v32 = v18[27];
  v33 = v18[28];
  if (v25)
  {
    v34 = sub_1BA38();
    a13 = v26;
    sub_11BFF8(v34);
    sub_11BD74(&def_259DC, v35, v36, "Couldn't create stand unit label by executing unit_Label cat for multiple ring query.");
    sub_8A2C();
  }

  v28(v47, v32);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, v46, v47, a16, a17, a18);
}

uint64_t sub_11B53C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_111A94();
}

uint64_t sub_11B638()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  sub_11C1CC();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_11B684(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1CA8F8, &qword_176F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11B6F4(void *a1)
{
  v1 = [a1 activeEnergyBurnedUnit];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

uint64_t sub_11B758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleActivitySummaryModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11B7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_8B38(v4);
  v6 = *(v5 + 16);
  v7 = sub_8B9C();
  v8(v7);
  return a2;
}

uint64_t sub_11B818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_11B870()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_16AC0(v3, v4);
}

uint64_t sub_11B8F8()
{
  sub_2D64((v0 + 16));
  sub_387F4();

  return _swift_deallocObject(v1, v2, v3);
}