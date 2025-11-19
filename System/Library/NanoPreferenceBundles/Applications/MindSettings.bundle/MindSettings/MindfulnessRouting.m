@interface MindfulnessRouting
+ (id)HPRFMindfulnessRoutingStateOfMindOptionsRoute;
- (_TtC12MindSettings18MindfulnessRouting)init;
@end

@implementation MindfulnessRouting

+ (id)HPRFMindfulnessRoutingStateOfMindOptionsRoute
{
  v2 = sub_B124(&qword_1DB78, &qword_110E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_B124(&qword_1DB80, &qword_110F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_EBF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = enum case for Route.options(_:);
  v16 = sub_EE08();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  v18 = sub_EDF8();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_EBC8();
  sub_B8E4(v5, &qword_1DB78, &qword_110E8);
  sub_B8E4(v9, &qword_1DB80, &qword_110F0);
  sub_EBD8(v19);
  v21 = v20;
  (*(v11 + 8))(v14, v10);

  return v21;
}

- (_TtC12MindSettings18MindfulnessRouting)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MindfulnessRouting();
  return [(MindfulnessRouting *)&v3 init];
}

@end