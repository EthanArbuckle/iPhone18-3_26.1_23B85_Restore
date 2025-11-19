void sub_100001070(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

int main(int argc, const char **argv, const char **envp)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,Start GNSSLocationService", buf, 2u);
  }

  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,listener resume GNSSLocationService", v6, 2u);
  }

  return 0;
}

void sub_100001B1C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xF1F]) < 0)
  {
    operator delete(STACK[0xF08]);
  }

  sub_100004540(&STACK[0xF20]);
  sub_100004610(v5 - 224);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry((v5 - 160));
  if (*(v4 + 4023) < 0)
  {
    operator delete(*(v5 - 104));
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_100001BE8(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002834();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

_BYTE *sub_100001C98(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002834();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_100001D50(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  if (a1 != a2)
  {
    sub_100004164((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  }

  memcpy((a1 + 64), (a2 + 64), 0x8C0uLL);
  sub_100004108(a1 + 2304, a2 + 2304);
  memcpy((a1 + 2352), (a2 + 2352), 0x529uLL);
  std::string::operator=((a1 + 3680), (a2 + 3680));
  v4 = *(a2 + 3708);
  *(a1 + 3704) = *(a2 + 3704);
  *(a1 + 3708) = v4;
  std::string::operator=((a1 + 3712), (a2 + 3712));
  v5 = *(a2 + 3738);
  *(a1 + 3736) = *(a2 + 3736);
  *(a1 + 3738) = v5;
  std::string::operator=((a1 + 3744), (a2 + 3744));
  v6 = *(a2 + 3770);
  *(a1 + 3768) = *(a2 + 3768);
  *(a1 + 3770) = v6;
  std::string::operator=((a1 + 3776), (a2 + 3776));
  v7 = *(a2 + 3829);
  v8 = *(a2 + 3816);
  *(a1 + 3800) = *(a2 + 3800);
  *(a1 + 3816) = v8;
  *(a1 + 3829) = v7;
  return a1;
}

uint64_t ConvertRavenSolutionEventToString(raven *a1)
{
  CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v16);
  v19 |= 1u;
  if (!v17)
  {
    operator new();
  }

  raven::ConvertRavenTimeToProtobuf();
  v19 |= 2u;
  v3 = v18;
  if (!v18)
  {
    operator new();
  }

  *(v18 + 320) |= 2u;
  v4 = *(v3 + 272);
  if (!v4)
  {
    operator new();
  }

  *(v4 + 28) |= 1u;
  v5 = *(v4 + 8);
  if (!v5)
  {
    operator new();
  }

  raven::ConvertRavenSolutionEventToProtobuf(a1, v5, v2);
  v6 = wireless_diagnostics::google::protobuf::MessageLite::SerializeToString();
  if ((v6 & 1) == 0)
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      sub_100004C48(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v16);
  return v6;
}

void sub_100002208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  raven::RavenSolutionEvent::~RavenSolutionEvent(&a16);

  _Unwind_Resume(a1);
}

void sub_100002498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  raven::RavenSolutionEvent::~RavenSolutionEvent(&a18);

  _Unwind_Resume(a1);
}

void sub_100002784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10000284C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000028A8(exception, a1);
}

std::logic_error *sub_1000028A8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000028DC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_100002924(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  sub_100001C98((a1 + 8), &unk_100006617);
  sub_100001C98((a1 + 32), &unk_100006617);
  *(a1 + 56) = 0;
  return a1;
}

void sub_100002974(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *sub_100002990(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100002834();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_100002A34(uint64_t a1)
{
  v2 = a1 + 547;
  *a1 = off_100008378;
  sub_100001C98((a1 + 8), &unk_100006617);
  *(a1 + 40) = 0u;
  *(a1 + 33) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = xmmword_1000058C0;
  *(a1 + 88) = xmmword_1000058D0;
  *(a1 + 104) = xmmword_1000058E0;
  *(a1 + 120) = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
  *(a1 + 136) = xmmword_1000058E0;
  *(a1 + 152) = xmmword_1000058D0;
  *(a1 + 168) = xmmword_1000058E0;
  *(a1 + 184) = vdupq_n_s64(0x3F9B573EAB367A10uLL);
  *(a1 + 200) = xmmword_1000058E0;
  *(a1 + 216) = xmmword_1000058D0;
  *(a1 + 232) = xmmword_1000058E0;
  *(a1 + 248) = xmmword_1000058F0;
  *(a1 + 264) = 0x3FF0000000000000;
  __asm { FMOV            V2.2D, #1.0 }

  *(a1 + 272) = _Q2;
  *(a1 + 288) = xmmword_100005900;
  *(a1 + 304) = xmmword_100005910;
  *(a1 + 320) = xmmword_100005920;
  *(a1 + 336) = xmmword_100005930;
  *(a1 + 352) = xmmword_100005940;
  *(a1 + 368) = xmmword_100005950;
  *(a1 + 384) = xmmword_100005960;
  *(a1 + 400) = xmmword_100005970;
  *(a1 + 416) = 0x3F847AE147AE147BLL;
  *(a1 + 424) = 2;
  *(a1 + 432) = xmmword_100005980;
  *(a1 + 448) = xmmword_100005990;
  *(a1 + 464) = xmmword_1000059A0;
  *(a1 + 480) = xmmword_1000059B0;
  *(a1 + 496) = xmmword_1000059C0;
  *(a1 + 512) = xmmword_1000059D0;
  *(a1 + 528) = xmmword_1000059E0;
  *(a1 + 544) = 257;
  *(a1 + 546) = 1;
  *v2 = 0;
  *(a1 + 551) = 1;
  *(a1 + 552) = 0;
  *(a1 + 560) = xmmword_1000059F0;
  *(a1 + 576) = 0;
  *(a1 + 580) = 1;
  *(a1 + 584) = 0;
  *(a1 + 588) = 0;
  *(v2 + 42) = 0x101010101010101;
  *(a1 + 597) = 0;
  *(a1 + 603) = 0x101010101010101;
  *(a1 + 598) = 0x101010101010101;
  *(a1 + 612) = 1096810496;
  *(a1 + 616) = 0x3FE0000000000000;
  *(a1 + 624) = xmmword_100005A00;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0x3F847AE147AE147BLL;
  *(a1 + 656) = xmmword_100005A10;
  *(a1 + 672) = xmmword_100005A20;
  *(a1 + 688) = xmmword_100005A30;
  *(a1 + 704) = xmmword_100005A40;
  *(a1 + 720) = xmmword_100005A50;
  *(a1 + 736) = xmmword_100005A60;
  *(a1 + 752) = xmmword_100005A70;
  *(a1 + 768) = xmmword_100005A80;
  *(a1 + 784) = xmmword_100005A90;
  *(a1 + 800) = xmmword_100005AA0;
  *(a1 + 816) = 0x3DB5FD7FE1796495;
  *(a1 + 824) = 2;
  *(a1 + 832) = 0x3FE0000000000000;
  *(a1 + 840) = 256;
  *(a1 + 848) = xmmword_100005AB0;
  *(a1 + 864) = xmmword_100005AC0;
  *(a1 + 880) = xmmword_100005AD0;
  *(a1 + 896) = xmmword_100005AE0;
  *(a1 + 912) = xmmword_100005AF0;
  *(a1 + 928) = xmmword_100005B00;
  *(a1 + 944) = xmmword_100005B10;
  *(a1 + 960) = xmmword_100005B20;
  *(a1 + 976) = 0x3FF0000000000000;
  *(a1 + 984) = 350;
  *(a1 + 992) = xmmword_100005B30;
  *(a1 + 1008) = xmmword_100005B40;
  *(a1 + 1024) = 0x3FF0000000000000;
  *(a1 + 1032) = 3;
  *(a1 + 1040) = xmmword_100005B50;
  *(a1 + 1056) = xmmword_100005B60;
  *(a1 + 1072) = xmmword_100005B70;
  *(a1 + 1088) = _Q2;
  *(a1 + 1104) = xmmword_100005B80;
  *(a1 + 1120) = xmmword_100005B90;
  *(a1 + 1136) = xmmword_100005BA0;
  *(a1 + 1152) = xmmword_100005BB0;
  *(a1 + 1168) = xmmword_100005BC0;
  *(a1 + 1184) = 0x4018000000000000;
  *(a1 + 1192) = 3;
  *(a1 + 1200) = xmmword_100005BD0;
  *(a1 + 1216) = xmmword_100005BE0;
  *(a1 + 1232) = xmmword_100005BF0;
  *(a1 + 1248) = xmmword_100005C00;
  *(a1 + 1264) = xmmword_100005BD0;
  *(a1 + 1280) = 6;
  *(a1 + 1288) = 0x4000000000000000;
  *(a1 + 1296) = 6;
  *(a1 + 1304) = 0x4000000000000000;
  *(a1 + 1312) = 2;
  *(a1 + 1320) = 0x4000000000000000;
  *(a1 + 1328) = xmmword_100005C10;
  *(a1 + 1344) = xmmword_100005C20;
  *(a1 + 1360) = xmmword_100005C30;
  *(a1 + 1376) = xmmword_100005C40;
  __asm { FMOV            V2.2D, #6.0 }

  *(a1 + 1392) = _Q2;
  *(a1 + 1408) = xmmword_100005C50;
  __asm { FMOV            V2.2D, #3.0 }

  *(a1 + 1424) = _Q2;
  *(a1 + 1440) = _Q2;
  *(a1 + 1456) = xmmword_100005C60;
  *(a1 + 1472) = 2;
  *(a1 + 1480) = 0x4024000000000000;
  *(a1 + 1488) = vdupq_n_s64(0x3FE0CCCCCCCCCCCDuLL);
  *(a1 + 1504) = xmmword_100005C70;
  *(a1 + 1520) = xmmword_100005C80;
  *(a1 + 1536) = xmmword_100005C90;
  *(a1 + 1552) = vdupq_n_s64(0x4066800000000000uLL);
  *(a1 + 1568) = xmmword_100005CA0;
  *(a1 + 1584) = xmmword_100005CB0;
  *(a1 + 1600) = xmmword_100005CC0;
  *(a1 + 1616) = xmmword_100005CD0;
  *(a1 + 1632) = xmmword_100005CE0;
  *(a1 + 1648) = 0;
  *(a1 + 1656) = xmmword_100005FA0;
  *(a1 + 1672) = unk_100005FB0;
  *(a1 + 1688) = xmmword_100005FA0;
  *(a1 + 1704) = unk_100005FB0;
  *(a1 + 1720) = xmmword_100005FA0;
  *(a1 + 1736) = unk_100005FB0;
  *(a1 + 1752) = xmmword_100005FA0;
  *(a1 + 1768) = unk_100005FB0;
  *(a1 + 1784) = xmmword_100005FA0;
  *(a1 + 1800) = unk_100005FB0;
  *(a1 + 1816) = xmmword_100005FA0;
  *(a1 + 1832) = unk_100005FB0;
  *(a1 + 1848) = xmmword_100005F60;
  *(a1 + 1864) = unk_100005F70;
  *(a1 + 1880) = xmmword_100005F40;
  *(a1 + 1896) = unk_100005F50;
  *(a1 + 1912) = xmmword_100005F60;
  *(a1 + 1928) = unk_100005F70;
  *(a1 + 1944) = xmmword_100005F80;
  *(a1 + 1960) = unk_100005F90;
  *(a1 + 1976) = xmmword_100005FA0;
  *(a1 + 1992) = unk_100005FB0;
  *(a1 + 2008) = xmmword_100005FA0;
  *(a1 + 2024) = unk_100005FB0;
  *(a1 + 2040) = xmmword_100005FA0;
  *(a1 + 2056) = unk_100005FB0;
  *(a1 + 2072) = xmmword_100005FA0;
  *(a1 + 2088) = unk_100005FB0;
  *(a1 + 2104) = 0;
  *(a1 + 2112) = xmmword_100005CF0;
  *(a1 + 2128) = xmmword_100005D00;
  *(a1 + 2144) = xmmword_100005C60;
  *(a1 + 2160) = xmmword_100005D10;
  *(a1 + 2176) = xmmword_100005D20;
  *(a1 + 2192) = 1;
  *(a1 + 2200) = 0x4034000000000000;
  *(a1 + 2208) = 0;
  *(a1 + 2216) = 0x404E000000000000;
  *(a1 + 2224) = xmmword_100005D30;
  *(a1 + 2240) = xmmword_100005D40;
  *(a1 + 2256) = xmmword_100005D50;
  *(a1 + 2272) = 0x3FE3333333333333;
  *(a1 + 2280) = 1;
  *(a1 + 2288) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(a1 + 2304) = 0;
  *(a1 + 2344) = 0;
  *(a1 + 2312) = 0u;
  *(a1 + 2328) = 0u;
  *(a1 + 2352) = 0x3FD51EB851EB851FLL;
  *(a1 + 2360) = xmmword_100005FC0;
  *(a1 + 2376) = unk_100005FD0;
  *(a1 + 2392) = 257;
  *(a1 + 2394) = 1;
  *(a1 + 2400) = xmmword_100005FE0;
  *(a1 + 2416) = unk_100005FF0;
  *(a1 + 2432) = xmmword_100005D60;
  *(a1 + 2448) = xmmword_100005D70;
  *(a1 + 2464) = xmmword_100005D80;
  __asm { FMOV            V1.2D, #0.5 }

  *(a1 + 2480) = _Q1;
  *(a1 + 2496) = vdupq_n_s64(0x3FEE666666666666uLL);
  *(a1 + 2512) = xmmword_100005D90;
  *(a1 + 2528) = xmmword_100005DA0;
  *(a1 + 2544) = 1;
  *(a1 + 2552) = 0x40BC200000000000;
  *(a1 + 2560) = 1;
  *(a1 + 2562) = 0;
  *(a1 + 2568) = 0x3FF0000000000000;
  *(a1 + 2576) = xmmword_1000060F0;
  *(a1 + 2640) = unk_100006130;
  *(a1 + 2624) = xmmword_100006120;
  *(a1 + 2608) = xmmword_100006110;
  *(a1 + 2592) = unk_100006100;
  *(a1 + 2656) = xmmword_100006000;
  *(a1 + 2720) = xmmword_100006040;
  *(a1 + 2704) = unk_100006030;
  *(a1 + 2688) = xmmword_100006020;
  *(a1 + 2672) = unk_100006010;
  *(a1 + 2736) = 0;
  *(a1 + 2792) = xmmword_100006080;
  *(a1 + 2808) = unk_100006090;
  *(a1 + 2760) = unk_100006060;
  *(a1 + 2776) = xmmword_100006070;
  *(a1 + 2744) = xmmword_100006050;
  *(a1 + 2872) = xmmword_1000060D0;
  *(a1 + 2888) = unk_1000060E0;
  *(a1 + 2840) = unk_1000060B0;
  *(a1 + 2856) = xmmword_1000060C0;
  *(a1 + 2824) = xmmword_1000060A0;
  *(a1 + 2952) = xmmword_100006120;
  *(a1 + 2968) = unk_100006130;
  *(a1 + 2920) = unk_100006100;
  *(a1 + 2936) = xmmword_100006110;
  *(a1 + 2904) = xmmword_1000060F0;
  *(a1 + 3032) = unk_100006170;
  *(a1 + 3048) = xmmword_100006180;
  *(a1 + 3000) = unk_100006150;
  *(a1 + 3016) = xmmword_100006160;
  *(a1 + 2984) = xmmword_100006140;
  *(a1 + 3064) = 0x3FEE666666666666;
  *(a1 + 3072) = xmmword_100005DB0;
  *(a1 + 3088) = xmmword_100005DC0;
  *(a1 + 3104) = xmmword_100005DD0;
  *(a1 + 3120) = xmmword_100005DE0;
  *(a1 + 3136) = xmmword_100005DF0;
  *(a1 + 3152) = xmmword_100005E00;
  *(a1 + 3168) = xmmword_100005E10;
  *(a1 + 3184) = xmmword_100005E20;
  *(a1 + 3200) = xmmword_100005E30;
  *(a1 + 3216) = xmmword_100005E40;
  *(a1 + 3232) = xmmword_100005E50;
  *(a1 + 3248) = xmmword_1000059C0;
  *(a1 + 3264) = xmmword_100005E60;
  *(a1 + 3280) = xmmword_100005E70;
  *(a1 + 3296) = xmmword_100005E80;
  *(a1 + 3312) = xmmword_100005E90;
  __asm { FMOV            V0.2D, #5.0 }

  *(a1 + 3328) = _Q0;
  *(a1 + 3344) = xmmword_100005EA0;
  *(a1 + 3360) = 0x3FE999999999999ALL;
  *(a1 + 3368) = 257;
  *(a1 + 3376) = xmmword_100005EB0;
  *(a1 + 3392) = 0x3FE0000000000000;
  *(a1 + 3400) = 0x400000005;
  *(a1 + 3408) = xmmword_100005EC0;
  *(a1 + 3424) = xmmword_100005ED0;
  *(a1 + 3440) = xmmword_100005EE0;
  *(a1 + 3456) = vdupq_n_s64(0x4014880F19EA2B99uLL);
  *(a1 + 3472) = xmmword_100005EF0;
  *(a1 + 3488) = xmmword_100005F00;
  *(a1 + 3504) = 0x4022000000000000;
  *(a1 + 3512) = 0;
  *(a1 + 3520) = xmmword_100005F10;
  *(a1 + 3536) = 257;
  *(a1 + 3544) = 0x4072C00000000000;
  *(a1 + 3552) = 0x412E848000000000;
  *(a1 + 3560) = 2;
  *(a1 + 3568) = 1;
  *(a1 + 3576) = 0x4014000000000000;
  *(a1 + 3584) = 0x3F847AE147AE147BLL;
  *(a1 + 3592) = 5;
  *(a1 + 3596) = 1;
  *(a1 + 3600) = xmmword_100005F20;
  *(a1 + 3616) = 0x4014000000000000;
  *(a1 + 3624) = 100;
  *(a1 + 3632) = xmmword_100005F30;
  *(a1 + 3648) = 0x3FD3333333333333;
  *(a1 + 3656) = 3;
  *(a1 + 3664) = 0;
  *(a1 + 3668) = 0;
  *(a1 + 3672) = 0;
  sub_100001C98((a1 + 3680), &unk_100006617);
  *(a1 + 3704) = 10;
  *(a1 + 3708) = 0;
  sub_100001C98((a1 + 3712), "raven_output.bin");
  *(a1 + 3736) = 256;
  *(a1 + 3738) = 0;
  sub_100001C98((a1 + 3744), "raven_debug.txt");
  *(a1 + 3768) = 0;
  *(a1 + 3770) = 0;
  sub_100001C98((a1 + 3776), "raven_msr.txt");
  *(a1 + 3804) = 1;
  *(a1 + 3800) = 16843009;
  *(a1 + 3805) = 0;
  *(a1 + 3807) = 0x101010101010101;
  *(a1 + 3815) = 1;
  *(v2 + 3270) = 16843009;
  *(a1 + 3821) = 0;
  *(a1 + 3822) = 16843009;
  *(a1 + 3825) = 16843009;
  *(a1 + 3829) = 0;
  *(a1 + 3834) = 1;
  *(a1 + 3830) = 16843009;
  *(v2 + 3288) = 0x1000000;
  *(a1 + 3839) = 1;
  *(a1 + 3840) = 0;
  *(a1 + 3844) = 0;
  return a1;
}

void sub_1000034B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 3767) < 0)
  {
    operator delete(*v6);
  }

  if (*(v2 + 3735) < 0)
  {
    operator delete(*v5);
  }

  if (*(v2 + 3703) < 0)
  {
    operator delete(*v4);
  }

  v8 = *(v2 + 2328);
  if (v8)
  {
    sub_100003FF8(v8);
  }

  sub_100004064(va);
  *v2 = v3;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100003538(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 32) = a3;
  sub_1000039E8(v26);
  v4 = v26[0];
  if ((*(&v26[4] + *(v26[0] - 3)) & 5) != 0)
  {
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    v23.__r_.__value_.__s.__data_[0] = 2;
    cnprint::CNPrinter::Print();
  }

  else
  {
    if (*(a1 + 31) < 0)
    {
      *(a1 + 16) = 0;
      v5 = *(a1 + 8);
    }

    else
    {
      *(a1 + 31) = 0;
      v5 = (a1 + 8);
    }

    *v5 = 0;
    memset(&__str, 0, sizeof(__str));
    while (1)
    {
      std::ios_base::getloc((v26 + *(v4 - 3)));
      v6 = std::locale::use_facet(&v23, &std::ctype<char>::id);
      v7 = (v6->__vftable[2].~facet_0)(v6, 10);
      std::locale::~locale(&v23);
      v8 = sub_100003CB0(v26, &__str, v7);
      v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      LOBYTE(v10) = *(&__str.__r_.__value_.__s + 23);
      if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
      {
        break;
      }

      size = __str.__r_.__value_.__l.__size_;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = __str.__r_.__value_.__l.__size_;
      }

      if (v13 >= 1)
      {
        v14 = p_str + v13;
        v15 = p_str;
        do
        {
          v16 = memchr(v15, 35, v13);
          if (!v16)
          {
            break;
          }

          if (*v16 == 35)
          {
            if (v16 != v14 && v16 - p_str != -1)
            {
              std::string::basic_string(&v23, &__str, 0, v16 - p_str, &v25);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = v23;
              v9 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
              size = v23.__r_.__value_.__l.__size_;
              v10 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
            }

            break;
          }

          v15 = (v16 + 1);
          v13 = v14 - v15;
        }

        while (v14 - v15 >= 1);
      }

      if ((v10 & 0x80u) != 0)
      {
        v9 = size;
      }

      sub_100003EA4(&v23, v9 + 1);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v23;
      }

      else
      {
        v17 = v23.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &__str;
        }

        else
        {
          v18 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v17, v18, v9);
      }

      *(&v17->__r_.__value_.__l.__data_ + v9) = 10;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v23;
      }

      else
      {
        v19 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v23.__r_.__value_.__l.__size_;
      }

      std::string::append((a1 + 8), v19, v20);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v4 = v26[0];
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v21 = (*(*a1 + 32))(a1);
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v21;
}

void sub_10000390C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100003988(uint64_t a1, char *a2, char a3)
{
  *(a1 + 32) = a3;
  sub_100003C68((a1 + 8), a2);
  v4 = *(*a1 + 32);

  return v4(a1);
}

void (__cdecl ***sub_1000039E8(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100003B74(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

std::string *sub_100003BAC(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_100003C68(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100003BAC(a1, __s, v4);
}

void *sub_100003CB0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  std::istream::sentry::sentry();
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_100003E14(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x100003DD4);
  }

  __cxa_rethrow();
}

uint64_t sub_100003EA4(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002834();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_100003F30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

void sub_100003FF8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_100004064(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000040B8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000040B8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_100004108(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  if (v6)
  {
    sub_100003FF8(v6);
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_100004164(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_100004304(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_100004344(a1, v10);
    }

    sub_1000044D0();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_100004390(a1, (v6 + v12), a3, v11);
  }
}

void sub_100004304(uint64_t a1)
{
  if (*a1)
  {
    sub_1000040B8(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_100004344(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1000044E8(a1, a2);
  }

  sub_1000044D0();
}

char *sub_100004390(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100002990(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_100004450(v9);
  return v4;
}

uint64_t sub_100004450(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100004488(a1);
  }

  return a1;
}

void sub_100004488(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_1000044E8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000028DC();
}

uint64_t sub_100004540(uint64_t a1)
{
  if (*(a1 + 3799) < 0)
  {
    operator delete(*(a1 + 3776));
  }

  if (*(a1 + 3767) < 0)
  {
    operator delete(*(a1 + 3744));
  }

  if (*(a1 + 3735) < 0)
  {
    operator delete(*(a1 + 3712));
  }

  if (*(a1 + 3703) < 0)
  {
    operator delete(*(a1 + 3680));
  }

  v2 = *(a1 + 2328);
  if (v2)
  {
    sub_100003FF8(v2);
  }

  v4 = (a1 + 40);
  sub_100004064(&v4);
  *a1 = off_100008378;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100004610(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100004654(uint64_t a1)
{
  sub_100004764(a1 + 8);
  sub_1000047F4((a1 + 104));
  sub_100004918((a1 + 1168));
  sub_1000049F4(a1 + 2032);
  sub_1000046CC(a1);
  return a1;
}

double sub_1000046CC(uint64_t a1)
{
  memset(v6, 0, 96);
  sub_100004764(v6);
  v2 = v6[3];
  *(a1 + 40) = v6[2];
  *(a1 + 56) = v2;
  v3 = v6[5];
  *(a1 + 72) = v6[4];
  *(a1 + 88) = v3;
  v4 = v6[1];
  *(a1 + 8) = v6[0];
  *(a1 + 24) = v4;
  sub_100004848(a1 + 104);
  bzero(v6, 0x360uLL);
  sub_100004918(v6);
  memcpy((a1 + 1168), v6, 0x360uLL);
  return sub_100004A94(a1 + 2032);
}

uint64_t sub_100004764(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  CNTimeSpan::SetTimeSpan(a1, 0, 0.0);
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 24), 0, 0.0);
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 48), 0, 0.0);
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 72), 0, 0.0);
  *(a1 + 88) = 0x7FF8000000000000;
  return a1;
}

int64x2_t *sub_1000047F4(int64x2_t *a1)
{
  a1->i8[0] = 0;
  sub_100004764(&a1->i64[1]);
  a1[6].i16[4] = 0;
  a1[7].i64[1] = 0;
  a1[8].i64[0] = 0;
  a1[60] = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[61].i64[0] = 0;
  a1[61].i64[1] = 0x7FF8000000000000;
  sub_100004848(a1);
  return a1;
}

void sub_100004848(uint64_t a1)
{
  *a1 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  sub_100004764(&v5);
  v2 = v8;
  *(a1 + 40) = v7;
  *(a1 + 56) = v2;
  v3 = v10;
  *(a1 + 72) = v9;
  *(a1 + 88) = v3;
  v4 = v6;
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v5, 0, 0.0);
  *(a1 + 120) = v5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 960) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 976) = 0;
  *(a1 + 984) = 0x7FF8000000000000;
  bzero((a1 + 164), 0x318uLL);
}

int64x2_t sub_100004918(_OWORD *a1)
{
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v1 = sub_100004764(a1);
  *(v1 + 96) = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(v1 + 104) = result;
  *(v1 + 120) = result;
  *(v1 + 136) = result;
  *(v1 + 152) = result;
  *(v1 + 168) = 0x7FF8000000000000;
  *(v1 + 176) = 0;
  *(v1 + 184) = result;
  *(v1 + 200) = result;
  *(v1 + 216) = result;
  *(v1 + 232) = result;
  *(v1 + 248) = result;
  *(v1 + 264) = 0x7FF8000000000000;
  *(v1 + 272) = result;
  *(v1 + 288) = 0x7FF8000000000000;
  *(v1 + 296) = 0;
  *(v1 + 304) = result;
  *(v1 + 320) = result;
  *(v1 + 336) = result;
  *(v1 + 352) = result;
  *(v1 + 368) = 0x7FF8000000000000;
  *(v1 + 376) = 0;
  *(v1 + 384) = result;
  *(v1 + 400) = result;
  *(v1 + 416) = result;
  *(v1 + 432) = result;
  *(v1 + 448) = 0x7FF8000000000000;
  *(v1 + 456) = 0;
  *(v1 + 464) = result;
  *(v1 + 480) = result;
  *(v1 + 496) = result;
  *(v1 + 512) = result;
  *(v1 + 528) = result;
  *(v1 + 544) = result;
  *(v1 + 560) = result;
  *(v1 + 576) = 0;
  *(v1 + 584) = 0x7FF8000000000000;
  *(v1 + 592) = result;
  *(v1 + 608) = result;
  *(v1 + 624) = result;
  *(v1 + 640) = result;
  *(v1 + 656) = 0;
  *(v1 + 664) = 0x7FF8000000000000;
  *(v1 + 672) = result;
  *(v1 + 688) = result;
  *(v1 + 704) = result;
  *(v1 + 720) = result;
  *(v1 + 736) = 0;
  *(v1 + 744) = 0x7FF8000000000000;
  *(v1 + 752) = result;
  *(v1 + 768) = result;
  *(v1 + 784) = result;
  *(v1 + 800) = result;
  *(v1 + 816) = 0;
  *(v1 + 824) = 0x7FF8000000000000;
  *(v1 + 832) = result;
  *(v1 + 848) = result;
  return result;
}

uint64_t sub_1000049F4(uint64_t a1)
{
  v2 = sub_100004764(a1);
  *(v2 + 96) = 0;
  *(v2 + 104) = 0x3FF0000000000000;
  *(v2 + 192) = 0;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 392) = 0;
  *(v2 + 400) = 0;
  *(v2 + 496) = 0;
  *(v2 + 504) = 0;
  *(v2 + 512) = 0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 170) = 0u;
  *(v2 + 520) = 0x3FF0000000000000;
  *(v2 + 528) = 0;
  *(v2 + 536) = 0u;
  *(v2 + 552) = 0;
  *(v2 + 560) = 0x3FF0000000000000;
  *(v2 + 584) = 0;
  *(v2 + 568) = 0u;
  *(v2 + 592) = 0;
  *(v2 + 600) = 0x3FE0000000000000;
  *(v2 + 608) = 0x3FE0000000000000;
  *(v2 + 616) = 0;
  sub_100004A94(v2);
  return a1;
}

double sub_100004A94(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  sub_100004764(&v6);
  v2 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v2;
  v3 = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v4 = v7;
  *a1 = v6;
  *(a1 + 16) = v4;
  result = 0.0;
  *(a1 + 184) = 0u;
  a1 += 184;
  *(a1 - 88) = 0;
  *(a1 - 80) = 0x3FF0000000000000;
  *(a1 - 72) = 0u;
  *(a1 - 56) = 0u;
  *(a1 - 40) = 0u;
  *(a1 - 24) = 0u;
  *(a1 - 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0x3FF0000000000000;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0x3FF0000000000000;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0x3FE0000000000000;
  *(a1 + 424) = 0x3FE0000000000000;
  *(a1 + 432) = 0;
  return result;
}

void sub_100004B68(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100004B84()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100004BB4(char a1, char a2)
{
  v2[0] = 67240448;
  v2[1] = a1 & 1;
  v3 = 1026;
  v4 = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "CLGLS,GNSSLocationService,failed to configureInitializeAndStartRavenSupervisorWithPlatformInfo,isConfigured,%{public}d,initialized,%{public}d", v2, 0xEu);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}