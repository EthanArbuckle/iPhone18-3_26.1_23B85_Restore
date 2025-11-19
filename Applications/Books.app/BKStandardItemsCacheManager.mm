@interface BKStandardItemsCacheManager
+ (void)prewarm;
- (BKStandardItemsCacheManager)init;
@end

@implementation BKStandardItemsCacheManager

+ (void)prewarm
{
  if (qword_100AD1688 != -1)
  {
    swift_once();
  }

  v0 = sub_10079ACE4();
  sub_100008B98(v0, qword_100AE4D38);
  v1 = sub_10079ACC4();
  v2 = sub_1007A2994();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_1000070F4(0x286D726177657270, 0xE900000000000029, &v7);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_1000070F4(0xD000000000000019, 0x8000000100845C60, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s %s prewarm start", v3, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100AD1C18 != -1)
  {
    swift_once();
  }

  oslog = sub_10079ACC4();
  v4 = sub_1007A2994();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000070F4(0x286D726177657270, 0xE900000000000029, &v7);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1000070F4(0xD000000000000019, 0x8000000100845C60, &v7);
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s %s prewarm end", v5, 0x16u);
    swift_arrayDestroy();
  }
}

- (BKStandardItemsCacheManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StandardItemsCacheManager();
  return [(BKStandardItemsCacheManager *)&v3 init];
}

@end