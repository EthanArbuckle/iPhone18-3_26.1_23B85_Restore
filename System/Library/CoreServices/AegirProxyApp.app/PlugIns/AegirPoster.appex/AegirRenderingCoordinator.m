@interface AegirRenderingCoordinator
- (uint64_t)astronomyVistaViewContentsAnimationFinished:;
- (void)pulseAnimationDidFinish;
@end

@implementation AegirRenderingCoordinator

- (void)pulseAnimationDidFinish
{
  v2 = *&self->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager];
  v3 = qword_1000470F0;
  v4 = off_1000470F8;

  v6._countAndFlagsBits = v3;
  v6._object = v4;
  sub_100034684(v6);

  sub_100012108(0);
}

- (uint64_t)astronomyVistaViewContentsAnimationFinished:
{
  v0 = sub_100034874();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v5 = sub_100034854();
  v6 = sub_100034C64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "astronomyVistaViewContentsAnimationFinished", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

@end