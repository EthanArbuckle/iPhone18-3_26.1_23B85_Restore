void sub_100073B0C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1000A403C();
    if (v21)
    {
      v5 = 0;
      v6 = v4 + 56;
      sub_1002E4F88();
      sub_1002E589C();
      v8 = v7 >> 6;
      if (v2)
      {
        while (2)
        {
          sub_1002E4CD8();
LABEL_11:
          v14 = (*(v9 + 48) + 16 * (v10 | (v5 << 6)));
          v16 = *v14;
          v15 = v14[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v17 = Hasher._finalize()();
          v18 = ~(-1 << *(a2 + 32));
          do
          {
            v19 = v17 & v18;
            if (((*(a2 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {

              return;
            }

            v20 = (*(a2 + 48) + 16 * v19);
            v21 = *v20 == v16 && v20[1] == v15;
            if (v21)
            {
              break;
            }

            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v17 = v19 + 1;
          }

          while ((v22 & 1) == 0);

          if (v2)
          {
            continue;
          }

          break;
        }
      }

      v11 = v5;
      while (1)
      {
        v5 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v5 >= v8)
        {
          return;
        }

        ++v11;
        if (*(v6 + 8 * v5))
        {
          sub_1000C825C();
          v2 = v13 & v12;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_100073CE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100073D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074010(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074040(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074110()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CEF348) - 8;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Date();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_1000161C0((v0 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_clock), *(v0 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_clock + 24));
  dispatch thunk of Clock.time.getter();
  v13 = sub_1000161C0((v1 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_queue), *(v1 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_queue + 24));
  v14 = *(v2 + 72);
  *v5 = v1;
  sub_100095588();
  (*(v8 + 16))(&v5[v14], v12, v6);
  v15 = *v13;

  sub_100054814(v5, sub_1000D839C, 0, v15);
  sub_1000180EC(v5, &qword_100CEF348);
  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_1000742F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100074334()
{
  sub_100036220(&qword_100CBCEE8);

  return ShortDescribable.description.getter();
}

unint64_t sub_100074390()
{
  result = qword_100CD81C0;
  if (!qword_100CD81C0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD81C0);
  }

  return result;
}

unint64_t sub_1000743E8()
{
  result = qword_100CD81D0;
  if (!qword_100CD81D0)
  {
    sub_10022E824(&qword_100CB4680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD81D0);
  }

  return result;
}

uint64_t sub_100074450()
{
  sub_1000161C0((v0 + 32), *(v0 + 56));
  sub_1000567D8();
  return dispatch thunk of LocationMetadataManagerType.addObserver(_:)();
}

void sub_1000744A4(void *a1)
{
  v2.is_nil = swift_getObjectType();
  v2.value._rawValue = a1;

  ApplicationStateMonitor.applicationDidFinishLaunching(withOptions:)(v2);
}

uint64_t sub_1000744F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000926F8;

  return sub_10005682C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000745B8()
{

  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)();
}

uint64_t sub_1000745EC@<X0>(char a1@<W8>)
{
  *(v1 - 120) = a1;

  return swift_beginAccess();
}

uint64_t sub_10007463C()
{

  return sub_100035AD0(v4 + v2, v3 + v1, v0);
}

uint64_t sub_10007469C(uint64_t a1)
{
  *(v1 + 448) = a1;
  *v2 = *(v1 + 112);
  return *(v1 + 184);
}

uint64_t sub_100074770(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_1000747C0@<X0>(uint64_t a1@<X8>)
{
  v2[5] = v4;
  v2[6] = v3;
  v2[7] = v1;
  v2[14] = 0xD000000000000010;
  v2[15] = (a1 - 32) | 0x8000000000000000;
}

uint64_t sub_100074814@<X0>(uint64_t a1@<X8>)
{

  return sub_100355208(v2, v1 - a1);
}

uint64_t sub_100074834()
{

  return sub_1000359CC(v0 - 120);
}

void sub_10007484C(uint64_t a1@<X8>, __n128 a2@<Q2>, __n128 a3@<Q3>)
{
  *(v3 - 192) = a2;
  *(v3 - 176) = a3;
  *(v3 - 120) = a1;
  *(v3 - 112) = v3 - 192;
}

uint64_t sub_100074868()
{
  sub_10003BCD8();
  sub_10003BCD8();
}

void sub_100074924()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  _StringGuts.grow(_:)(85);
}

uint64_t sub_1000749E0()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100074A1C(uint64_t a1)
{

  return sub_1000180EC(a1, v1);
}

uint64_t sub_100074A80()
{

  return sub_1004A2D64(v0, type metadata accessor for CalendarGridCellViewModel);
}

id sub_100074B5C()
{
  v3 = *(v1 + 3744);

  return [v0 v3];
}

uint64_t sub_100074B8C@<X0>(uint64_t a1@<X8>)
{

  return sub_100035AD0(v1 + a1, v2, v3);
}

uint64_t sub_100074BB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[9] = a3;
  v3[6] = result;
  v3[7] = a2;
  return result;
}

uint64_t sub_100074BC4()
{

  return sub_100024D10(v1, 1, v0);
}

uint64_t sub_100074C0C()
{

  return sub_1000DFF38(v0, &type metadata accessor for SavedLocation);
}

uint64_t sub_100074C4C()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

unint64_t sub_100074D08()
{

  return sub_100078694(v0, v1, (v2 - 96));
}

uint64_t sub_100074D48()
{

  return sub_10009EF70(v1 + v0, type metadata accessor for ViewState.SecondaryViewState);
}

uint64_t sub_100074D7C()
{

  return swift_allocError();
}

uint64_t sub_100074D9C()
{
  v2 = *(v0 - 96);

  return sub_100032908(v2, type metadata accessor for PreviewLocation);
}

uint64_t sub_100074DE8()
{
}

uint64_t sub_100074E5C()
{
  sub_1000EBD74(*(v1 + v0[12]), *(v1 + v0[12] + 8));
  sub_1000EBD74(*(v1 + v0[13]), *(v1 + v0[13] + 8));
  v2 = v1 + v0[14];
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v14 = *(v2 + 72);
  v13 = *(v2 + 64);

  return sub_100168B1C(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
}

uint64_t sub_100074F38()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100074FD0()
{

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100075030()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000750A0()
{

  return NSObject.hash(into:)();
}

uint64_t sub_100075180()
{

  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000751D4()
{

  return sub_100078694(v0, v1, (v2 - 160));
}

uint64_t sub_1000752D0()
{

  return sub_10019213C(v0, type metadata accessor for TipPriorityQueue.GridEntry);
}

uint64_t sub_1000752F8()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100075330()
{

  return type metadata accessor for MoonRiseSet();
}

uint64_t sub_100075358()
{

  return sub_1000E0358(v0, type metadata accessor for ViewState);
}

uint64_t sub_1000753C8@<X0>(uint64_t a1@<X8>)
{

  return sub_100111510(v4 + a1, v3 + v1, v2);
}

uint64_t sub_1000753F4()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100075424()
{

  return sub_1009ACC90(v0, type metadata accessor for ListLocationRowPrimaryText);
}

uint64_t sub_100075474()
{

  return sub_100106090(v0, type metadata accessor for ConditionDetailChartDataInputFactoryWithCache.CacheKey);
}

uint64_t sub_1000754AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-1] - v6;
  v8 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v17[-1] - v9;
  v11 = type metadata accessor for WeatherConditionBackgroundTimeData();
  __chkstk_darwin(v11 - 8);
  v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035B30(a2 + OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver_weatherConditionBackgroundTimeDataFactory, v17);
  sub_1000161C0(v17, v17[3]);
  SavedLocation.location.getter();
  v14 = type metadata accessor for WeatherData(0);
  sub_10001B350(v7, 1, 1, v14);
  sub_1000756B0(v10, v7, a3, v13);
  sub_1000180EC(v7, &qword_100CA3898);
  sub_1000180EC(v10, &qword_100CA65D8);
  sub_10004F830(v13, type metadata accessor for WeatherConditionBackgroundTimeData);
  return sub_100006F14(v17);
}

uint64_t sub_1000756B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v126 = a3;
  v129 = a1;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v124 = v7;
  v125 = v6;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v123 = v8;
  v117 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v116 = v9;
  __chkstk_darwin(v10);
  sub_1000038E4();
  v115 = v11;
  v136 = type metadata accessor for Elevation();
  sub_1000037C4();
  v122 = v12;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v134 = v14;
  v15 = sub_10022C350(&qword_100CA65D8);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  v18 = &v111 - v17;
  v137 = type metadata accessor for Location();
  sub_1000037C4();
  v133 = v19;
  __chkstk_darwin(v20);
  sub_1000038E4();
  v132 = v21;
  v22 = sub_10022C350(&qword_100CA3898);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003848();
  v118 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  v127 = &v111 - v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  v30 = sub_10022C350(&qword_100CA75C8);
  v31 = sub_100003810(v30);
  __chkstk_darwin(v31);
  sub_100003848();
  v128 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  v35 = &v111 - v34;
  v36 = sub_10022C350(&unk_100CB2CF0);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_100003848();
  v120 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v121 = &v111 - v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  v43 = &v111 - v42;
  __chkstk_darwin(v44);
  v46 = &v111 - v45;
  v47 = type metadata accessor for Date();
  sub_1000037C4();
  v49 = v48;
  __chkstk_darwin(v50);
  sub_100003848();
  v114 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  v130 = &v111 - v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  v56 = &v111 - v55;
  static Settings.VFX.overrideConditionBackgroundDate.getter();
  sub_10000556C(v46);
  v119 = a2;
  v131 = v56;
  if (!v57)
  {
    (*(v49 + 32))(v56, v46, v47);
    v61 = v135;
    v62 = a4;
    v63 = v128;
    goto LABEL_14;
  }

  v113 = a4;
  sub_100035AD0(a2, v29, &qword_100CA3898);
  v58 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v29, 1, v58) == 1)
  {
    v59 = &qword_100CA3898;
    v60 = v29;
LABEL_7:
    sub_1000180EC(v60, v59);
    v62 = v113;
    v63 = v128;
    sub_100003934();
    sub_10001B350(v66, v67, v68, v47);
    v61 = v135;
    v56 = v131;
    goto LABEL_8;
  }

  sub_100035AD0(&v29[*(v58 + 36)], v35, &qword_100CA75C8);
  sub_10001ECD8();
  sub_10046636C(v29, v64);
  v65 = type metadata accessor for WeatherDataOverrides();
  if (sub_100024D10(v35, 1, v65) == 1)
  {
    v59 = &qword_100CA75C8;
    v60 = v35;
    goto LABEL_7;
  }

  sub_100035AD0(&v35[*(v65 + 20)], v43, &unk_100CB2CF0);
  sub_1000146C8();
  sub_10046636C(v35, v69);
  sub_10000556C(v43);
  v62 = v113;
  v61 = v135;
  v56 = v131;
  v63 = v128;
  if (v57)
  {
LABEL_8:
    (*(v49 + 16))(v56, v126, v47);
    sub_10000556C(v43);
    if (!v57)
    {
      sub_1000180EC(v43, &unk_100CB2CF0);
    }

    goto LABEL_12;
  }

  (*(v49 + 32))(v131, v43, v47);
LABEL_12:
  sub_10000556C(v46);
  if (!v57)
  {
    sub_1000180EC(v46, &unk_100CB2CF0);
  }

LABEL_14:
  sub_100035AD0(v129, v18, &qword_100CA65D8);
  v70 = v137;
  v71 = sub_100024D10(v18, 1, v137);
  v72 = v127;
  if (v71 != 1)
  {
    (*(v133 + 32))(v132, v18, v70);
    static GeoHandler.getElevation(for:on:)();
    v80 = v121;
    static Settings.VFX.overrideConditionBackgroundDate.getter();
    sub_10000556C(v80);
    v112 = v49;
    if (!v57)
    {
      v85 = sub_1000197B4();
      v86(v85, v80, v47);
LABEL_32:
      sub_1000161C0((v61 + 16), *(v61 + 40));
      v103 = v123;
      v104 = v132;
      Location.timeZone.getter();
      Location.coordinate.getter();
      v105 = type metadata accessor for WeatherConditionBackgroundTimeData();
      v106 = v130;
      dispatch thunk of MoonDataProviderType.weatherBackgroundMoonData(for:timeZone:coordinate:)();
      (*(v124 + 8))(v103, v125);
      v107 = v112;
      (*(v112 + 8))(v106, v47);
      (*(v133 + 8))(v104, v137);
      (*(v107 + 32))(v62, v131, v47);
      v108 = *(v105 + 20);
      v109 = v136;
      (*(v122 + 32))(v62 + v108, v134, v136);
      v76 = v62 + v108;
      v77 = 0;
      v78 = 1;
      v79 = v109;
      return sub_10001B350(v76, v77, v78, v79);
    }

    v81 = v119;
    sub_100035AD0(v119, v72, &qword_100CA3898);
    v82 = type metadata accessor for WeatherData(0);
    if (sub_100024D10(v72, 1, v82) == 1)
    {
      v83 = &qword_100CA3898;
      v84 = v72;
    }

    else
    {
      sub_100035AD0(v72 + *(v82 + 36), v63, &qword_100CA75C8);
      sub_10001ECD8();
      sub_10046636C(v72, v87);
      v88 = type metadata accessor for WeatherDataOverrides();
      if (sub_100024D10(v63, 1, v88) != 1)
      {
        v99 = v120;
        sub_100035AD0(v63, v120, &unk_100CB2CF0);
        sub_1000146C8();
        sub_10046636C(v63, v100);
        sub_10000556C(v99);
        if (!v57)
        {
          v101 = sub_1000197B4();
          v102(v101, v120, v47);
LABEL_30:
          sub_10000556C(v80);
          if (!v57)
          {
            sub_1000180EC(v80, &unk_100CB2CF0);
          }

          goto LABEL_32;
        }

LABEL_23:
        v92 = v118;
        sub_100035AD0(v81, v118, &qword_100CA3898);
        if (sub_100024D10(v92, 1, v82) == 1)
        {
          sub_1000180EC(v92, &qword_100CA3898);
          (*(v49 + 16))(v130, v126, v47);
        }

        else
        {
          v93 = v115;
          WeatherDataModel.currentWeather.getter();
          sub_10001ECD8();
          sub_10046636C(v92, v94);
          v95 = v114;
          CurrentWeather.date.getter();
          (*(v116 + 8))(v93, v117);
          v96 = sub_1000197B4();
          v97(v96, v95, v47);
        }

        v98 = v120;
        sub_10000556C(v120);
        if (!v57)
        {
          sub_1000180EC(v98, &unk_100CB2CF0);
        }

        goto LABEL_30;
      }

      v83 = &qword_100CA75C8;
      v84 = v63;
    }

    sub_1000180EC(v84, v83);
    sub_100003934();
    sub_10001B350(v89, v90, v91, v47);
    goto LABEL_23;
  }

  sub_1000180EC(v18, &qword_100CA65D8);
  (*(v49 + 32))(v62, v56, v47);
  type metadata accessor for WeatherConditionBackgroundTimeData();
  sub_100003934();
  sub_10001B350(v73, v74, v75, v136);
  type metadata accessor for BackgroundMoonData();
  sub_100003934();
  return sub_10001B350(v76, v77, v78, v79);
}

uint64_t sub_1000761B8(uint64_t a1, void (*a2)(char *, char *, uint64_t), char *a3)
{
  v5 = type metadata accessor for WeatherDataAction();
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewAction();
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModalViewAction();
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EnvironmentAction();
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MainAction();
  __chkstk_darwin(v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051168();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      return sub_100076540(*v19, a2, a3);
    case 2u:
      sub_1000501CC();
      sub_100174BC4(v16, a2, a3);
      v21 = type metadata accessor for EnvironmentAction;
      v22 = v16;
      return sub_10004FF18(v22, v21);
    case 6u:
      sub_1000501CC();
      sub_100A110E8(v10, a2, a3);
      v21 = type metadata accessor for ViewAction;
      v22 = v10;
      return sub_10004FF18(v22, v21);
    case 7u:
      sub_1000501CC();
      sub_100A10A90(v13, a2, a3);
      v21 = type metadata accessor for ModalViewAction;
      v22 = v13;
      return sub_10004FF18(v22, v21);
    case 9u:
      sub_1000501CC();
      sub_10019D8D4(v7, a2, a3);
      v21 = type metadata accessor for WeatherDataAction;
      v22 = v7;
      return sub_10004FF18(v22, v21);
    default:
      v21 = type metadata accessor for MainAction;
      v22 = v19;
      return sub_10004FF18(v22, v21);
  }
}

uint64_t sub_100076540(char a1, uint64_t a2, char *a3)
{
  v7 = sub_10022C350(&unk_100CB2CF0);
  result = __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  if (a1)
  {
    if (a1 == 1)
    {
      v11 = type metadata accessor for Date();
      (*(*(v11 - 8) + 16))(v10, a3, v11);
      sub_10001B350(v10, 0, 1, v11);
      v12 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_startLoadTime;
      swift_beginAccess();
      sub_10019F6D8(v10, v3 + v12);
      return swift_endAccess();
    }

    else
    {

      return sub_100A0D61C(a2, a3, v3);
    }
  }

  return result;
}

void sub_100076694()
{
  sub_100017580();
  v1 = type metadata accessor for WeatherDataAction();
  v2 = sub_100003AE8(v1);
  v148 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100003990(&v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  sub_10000E70C();
  sub_100003918(v7);
  v8 = type metadata accessor for NotificationsAction();
  v9 = sub_100003AE8(v8);
  v146 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100003990(&v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_100003918(v14);
  v144 = type metadata accessor for EnvironmentAction();
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_10000E70C();
  sub_100003990(v17);
  v18 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v18 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  v24 = &v135 - v23;
  __chkstk_darwin(v25);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_10000E70C();
  sub_100003918(v28);
  v29 = type metadata accessor for LocationsAction();
  v30 = sub_100003AE8(v29);
  v143 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_100003990(&v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  sub_10000E70C();
  sub_100003918(v35);
  v36 = type metadata accessor for MainAction();
  __chkstk_darwin(v36);
  v39 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v0;
  v40 = v0[5];
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v139 = v5 + 7;
    v43 = *(v37 + 72);
    v138 = v12 + 7;
    v137 = v33 + 7;
    v153 = v24;
    v152 = v36;
    v151 = v43;
    do
    {
      sub_100050D50(v42, v39, type metadata accessor for MainAction);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xEu:
        case 0x10u:
        case 0x11u:
          goto LABEL_33;
        case 2u:
          sub_100020FE8();
          sub_100050170(v104, v105, v106);
          sub_100020FE8();
          sub_100050D50(v107, v108, v109);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              if (*v149 != 1)
              {
                sub_10017DF2C(0);
              }

              break;
            case 2u:
            case 6u:
            case 7u:
            case 8u:
            case 9u:
            case 0xBu:
            case 0xDu:
            case 0xEu:
            case 0xFu:
            case 0x10u:
              goto LABEL_33;
            case 3u:
            case 4u:
            case 5u:
            case 0xAu:
            case 0xCu:
              sub_10004F998();
              break;
            default:
              v120 = *v149;
              v121 = type metadata accessor for TaskPriority();
              v122 = v136;
              sub_1000B0C98();
              sub_10001B350(v123, v124, v125, v126);
              v127 = sub_1000C87C0();
              sub_1005C1F54(v127, v128, &qword_100CA48E0);
              type metadata accessor for MainActor();
              sub_1000D3EF4();
              v129 = static MainActor.shared.getter();
              v130 = swift_allocObject();
              v131 = sub_1000C8B08(v130);
              *(v131 + 24) = &protocol witness table for MainActor;
              *(v131 + 32) = v36;
              *(v131 + 40) = v120;
              sub_1005C976C((v131 + 48));
              v0 = &qword_100CA3538;
              v36 = &unk_100A2D560;
              sub_1005C1F54(v122, v24, &qword_100CA3538);
              sub_100087FC8(v24, 1, v121);
              if (v129 == 1)
              {
                sub_100018144(v24, &qword_100CA3538);
              }

              else
              {
                TaskPriority.rawValue.getter();
                sub_100003B20();
                (*(v132 + 8))(v24, v121);
                sub_100195550();
              }

              v24 = *(v12 + 16);
              v43 = *(v12 + 24);
              swift_unknownObjectRetain();

              if (v24)
              {
                swift_getObjectType();
                v133 = v24;
                dispatch thunk of Actor.unownedExecutor.getter();
                sub_1000B7BA4();
              }

              else
              {
                v133 = 0;
                v43 = 0;
              }

              sub_100018144(v136, &qword_100CA3538);
              sub_1000244CC();
              v134 = swift_allocObject();
              *(v134 + 16) = &unk_100A65FA0;
              *(v134 + 24) = v12;
              if (v43 | v133)
              {
                v161 = 0;
                v162 = 0;
                v163 = v133;
                v164 = v43;
              }

              goto LABEL_32;
          }

          goto LABEL_33;
        case 3u:
          v141 = type metadata accessor for LocationsAction;
          sub_100020FE8();
          sub_100050170(v44, v45, v46);
          v140 = type metadata accessor for TaskPriority();
          sub_100003934();
          sub_10001B350(v47, v48, v49, v50);
          sub_1000163F8();
          v51 = v142;
          sub_100050D50(v0, v142, v52);
          v53 = sub_1000C87C0();
          sub_1005C1F54(v53, v54, &qword_100CA48E0);
          type metadata accessor for MainActor();
          sub_1000D3EF4();
          v55 = static MainActor.shared.getter();
          sub_100037834();
          v58 = v57 & ~v56;
          v0 = ((v137 + v58) & 0xFFFFFFFFFFFFFFF8);
          v59 = swift_allocObject();
          v60 = sub_1000C8B08(v59);
          *(v60 + 24) = &protocol witness table for MainActor;
          *(v60 + 32) = v36;
          sub_100050170(v51, v60 + v58, v141);
          sub_1005C976C(v0 + v12);
          v61 = v140;
          sub_100020FE8();
          v36 = &qword_100CA3538;
          sub_1005C1F54(v62, v63, &qword_100CA3538);
          v64 = sub_10000C834();
          sub_100087FC8(v64, v65, v61);
          if (v55 == 1)
          {
            sub_10004271C();
          }

          else
          {
            TaskPriority.rawValue.getter();
            sub_100003B20();
            (*(v110 + 8))(v0, v61);
            sub_100195550();
          }

          v24 = *(v12 + 16);
          v43 = *(v12 + 24);
          swift_unknownObjectRetain();

          if (v24)
          {
            swift_getObjectType();
            v111 = v24;
            dispatch thunk of Actor.unownedExecutor.getter();
            sub_1000B7BA4();
          }

          else
          {
            v111 = 0;
            v43 = 0;
          }

          sub_100018144(v150, &qword_100CA3538);
          sub_1000244CC();
          v117 = swift_allocObject();
          *(v117 + 16) = &unk_100A65FB8;
          *(v117 + 24) = v12;
          if (v43 | v111)
          {
            v158 = 0;
            v157 = 0;
            v159 = v111;
            v160 = v43;
          }

          sub_100016BF4();
          sub_1000BC6C0();

          sub_100036D9C();
          goto LABEL_33;
        case 4u:
          v141 = type metadata accessor for NotificationsAction;
          sub_100020FE8();
          sub_100050170(v66, v67, v68);
          v69 = type metadata accessor for TaskPriority();
          sub_100003934();
          sub_10001B350(v70, v71, v72, v69);
          sub_10006A838();
          sub_100050D50(v0, v145, v73);
          v74 = sub_1000C87C0();
          sub_1005C1F54(v74, v75, &qword_100CA48E0);
          type metadata accessor for MainActor();
          sub_1000D3EF4();
          v76 = static MainActor.shared.getter();
          sub_100037834();
          v0 = (v78 & ~v77);
          sub_1000C85D0();
          v79 = swift_allocObject();
          v80 = sub_1000C8B08(v79);
          sub_1001923E8(v80, &protocol witness table for MainActor);
          sub_1005C976C((v12 + v24));
          sub_100020FE8();
          v36 = &qword_100CA3538;
          sub_1005C1F54(v81, v82, &qword_100CA3538);
          v83 = sub_10000C834();
          sub_100087FC8(v83, v84, v69);
          if (v76 == 1)
          {
            sub_10004271C();
          }

          else
          {
            TaskPriority.rawValue.getter();
            sub_100003B20();
            (*(v112 + 8))(v0, v69);
            sub_100195550();
          }

          v24 = *(v12 + 16);
          v43 = *(v12 + 24);
          swift_unknownObjectRetain();

          if (v24)
          {
            swift_getObjectType();
            v113 = v24;
            dispatch thunk of Actor.unownedExecutor.getter();
            sub_1000B7BA4();
          }

          else
          {
            v113 = 0;
            v43 = 0;
          }

          sub_100018144(v154, &qword_100CA3538);
          sub_1000244CC();
          v118 = swift_allocObject();
          *(v118 + 16) = &unk_100A65F88;
          *(v118 + 24) = v12;
          if (v43 | v113)
          {
            v165 = 0;
            v166 = 0;
            v167 = v113;
            v168 = v43;
          }

          sub_100016BF4();
          sub_1000BC6C0();

          sub_100071D58();
          goto LABEL_33;
        case 9u:
          v141 = type metadata accessor for WeatherDataAction;
          sub_100020FE8();
          sub_100050170(v85, v86, v87);
          v88 = type metadata accessor for TaskPriority();
          sub_100003934();
          sub_10001B350(v89, v90, v91, v88);
          sub_10003BAB4();
          sub_100050D50(v0, v147, v92);
          v93 = sub_1000C87C0();
          sub_1005C1F54(v93, v94, &qword_100CA48E0);
          type metadata accessor for MainActor();
          sub_1000D3EF4();
          v95 = static MainActor.shared.getter();
          sub_100037834();
          v0 = (v97 & ~v96);
          sub_1000C85D0();
          v98 = swift_allocObject();
          v99 = sub_1000C8B08(v98);
          sub_1001923E8(v99, &protocol witness table for MainActor);
          sub_1005C976C((v12 + v24));
          sub_100020FE8();
          v36 = &qword_100CA3538;
          sub_1005C1F54(v100, v101, &qword_100CA3538);
          v102 = sub_10000C834();
          sub_100087FC8(v102, v103, v88);
          if (v95 == 1)
          {
            sub_10004271C();
          }

          else
          {
            TaskPriority.rawValue.getter();
            sub_100003B20();
            (*(v114 + 8))(v0, v88);
            sub_100195550();
          }

          v115 = *(v12 + 16);
          swift_unknownObjectRetain();

          if (v115)
          {
            swift_getObjectType();
            v24 = dispatch thunk of Actor.unownedExecutor.getter();
            v43 = v116;
            swift_unknownObjectRelease();
          }

          else
          {
            v24 = 0;
            v43 = 0;
          }

          sub_100018144(v155, &qword_100CA3538);
          sub_1000244CC();
          v119 = swift_allocObject();
          *(v119 + 16) = &unk_100A65F68;
          *(v119 + 24) = v12;
          if (v43 | v24)
          {
            v169 = 0;
            v170 = 0;
            v171 = v24;
            v172 = v43;
          }

LABEL_32:
          sub_100016BF4();
          sub_1000BC6C0();

LABEL_33:
          sub_10004F998();
          break;
        default:
          break;
      }

      v42 += v43;
      --v41;
    }

    while (v41);
  }
}

uint64_t sub_100077564()
{
  type metadata accessor for WeatherDataAction();
  sub_1000082C0();
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v6 = v0 + v4;
  sub_10001920C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 7u:
      goto LABEL_16;
    case 2u:

      if (*(v6 + 24) >= 0xEuLL)
      {
      }

      goto LABEL_16;
    case 3u:
    case 9u:

      goto LABEL_16;
    case 4u:
      v76 = v5;

      v79 = sub_10022C350(&qword_100CAC0C8);
      v7 = v6 + v79[12];

      v8 = type metadata accessor for WeatherData(0);
      v9 = v8[5];
      v10 = type metadata accessor for Locale();
      if (!sub_100024D10(v7 + v9, 1, v10))
      {
        sub_100003B20();
        (*(v11 + 8))(v7 + v9, v10);
      }

      v12 = v8[6];
      type metadata accessor for WeatherDataModel();
      sub_100003D98();
      (*(v13 + 8))(v7 + v12);
      v14 = v7 + v8[7];
      v15 = sub_10022C350(&qword_100CAC710);
      v16 = sub_1000131C4();
      if (!sub_100024D10(v16, v17, v15))
      {
        v18 = type metadata accessor for Date();
        sub_1000037E8();
        v20 = *(v19 + 8);
        v21 = sub_10002C8AC();
        v20(v21);
        v22 = *(v15 + 48);
        v23 = type metadata accessor for WeatherDataRelevancy();
        if (!sub_100024D10(v14 + v22, 1, v23))
        {
          (v20)(v14 + v22, v18);
        }
      }

      v24 = v7 + v8[8];
      type metadata accessor for WeatherData.WeatherStatisticsState(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        type metadata accessor for WeatherStatisticsModel();
        sub_100003D98();
        (*(v27 + 8))(v24);
      }

      else if (!EnumCaseMultiPayload)
      {
      }

      v28 = v7 + v8[9];
      v29 = type metadata accessor for WeatherDataOverrides();
      v30 = sub_1000131C4();
      if (!sub_100024D10(v30, v31, v29))
      {
        v32 = type metadata accessor for Date();
        v33 = sub_1000131C4();
        if (!sub_100024D10(v33, v34, v32))
        {
          sub_100003B20();
          (*(v35 + 8))(v28, v32);
        }

        v36 = *(v29 + 20);
        if (!sub_100024D10(v28 + v36, 1, v32))
        {
          sub_100003B20();
          (*(v37 + 8))(v28 + v36, v32);
        }
      }

      v38 = v6 + v79[16];
      v39 = type metadata accessor for UUID();
      sub_1000037E8();
      v77 = *(v40 + 8);
      v77(v38, v39);
      v41 = type metadata accessor for PreprocessedWeatherData();

      v42 = v38 + v41[6];

      v43 = v42 + *(type metadata accessor for FeelsLikeComponentPreprocessedDataModel() + 28);
      v44 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
      if (!sub_100024D10(v43, 1, v44))
      {

        v45 = v43 + *(v44 + 20);
        type metadata accessor for TemperatureScaleConfiguration();
        sub_100003D98();
        (*(v46 + 8))(v45);
        type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
      }

      v47 = v38 + v41[7];
      v48 = sub_1000131C4();
      if (!sub_100024D10(v48, v49, v39))
      {
        v77(v47, v39);
      }

      type metadata accessor for HourlyForecastComponentViewModel(0);

      v50 = *(type metadata accessor for HourlyForecastComponentPreprocessedDataModel() + 20);
      v51 = type metadata accessor for WeatherDescription();
      if (!sub_100024D10(v47 + v50, 1, v51))
      {
        sub_100003B20();
        (*(v52 + 8))(v47 + v50, v51);
      }

      sub_1005C96E4();

      v53 = v47 + *(type metadata accessor for ListPreprocessedDataModel() + 32);
      type metadata accessor for Date();
      sub_100003D98();
      v74 = *(v54 + 8);
      v75 = v55;
      v74(v53);
      v56 = type metadata accessor for WeatherConditionBackgroundTimeData();
      v57 = *(v56 + 20);
      v78 = type metadata accessor for Elevation();
      if (!sub_100024D10(v53 + v57, 1, v78))
      {
        sub_100003B20();
        (*(v58 + 8))(v53 + v57);
      }

      v59 = *(v56 + 24);
      v60 = type metadata accessor for BackgroundMoonData();
      if (!sub_1000D3BF0(v53 + v59))
      {
        sub_100003B20();
        (*(v61 + 8))(v53 + v59, v60);
      }

      sub_1005C96E4();

      v62 = v38 + v41[10];
      sub_100003B20();
      (*(v63 + 8))(v62, v51);
      type metadata accessor for UVIndexComponentPreprocessedDataModel();
      sub_100014298();
      sub_100014298();
      sub_1005C96E4();

      v64 = v38 + v41[12];
      type metadata accessor for PressureTrend();
      sub_100003D98();
      (*(v65 + 8))(v64);
      type metadata accessor for PressureComponentPreprocessedDataModel();
      sub_100014298();
      sub_100014298();
      sub_100014298();
      sub_100014298();
      sub_1005C96E4();

      v66 = v38 + v41[14];
      (v74)(v66, v75);
      v67 = *(v56 + 20);
      if (!sub_100024D10(v66 + v67, 1, v78))
      {
        sub_100003B20();
        (*(v68 + 8))(v66 + v67, v78);
      }

      v69 = *(v56 + 24);
      if (!sub_1000D3BF0(v66 + v69))
      {
        sub_100003B20();
        (*(v70 + 8))(v66 + v69, v60);
      }

      sub_1005C96E4();

      v71 = v79[20];
      type metadata accessor for NewsDataModel();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        type metadata accessor for News();
        sub_100003D98();
        (*(v72 + 8))(v6 + v71);
      }

      v5 = v76;
      goto LABEL_44;
    case 5u:

      sub_10022C350(&qword_100CAC0B8);
      sub_100040EDC();
      type metadata accessor for NewsDataModel();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_16:
      }

      else
      {
        type metadata accessor for News();
LABEL_19:
        sub_100003D98();
        (*(v26 + 8))(v6 + v1);
      }

LABEL_44:
      if (*(v0 + v5 + 24))
      {
        sub_100006F14(v0 + v5);
      }

      return swift_deallocObject();
    case 6u:

      sub_10022C350(&qword_100CAC0C0);
      sub_100040EDC();
      type metadata accessor for AvailableDataSets();
      goto LABEL_19;
    case 8u:

      sub_10022C350(&qword_100CAC0B0);
      sub_100040EDC();
      type metadata accessor for WeatherStatisticsModel();
      goto LABEL_19;
    default:
      goto LABEL_44;
  }
}

uint64_t sub_100077F8C()
{
  type metadata accessor for NotificationsAction();
  sub_1000082C0();
  sub_10019252C();

  v4 = v1 + v0;
  sub_10001920C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for NotificationLocation();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        type metadata accessor for Location();
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_17;
        }

        type metadata accessor for LocationModel();
      }

      sub_100003D98();
      (*(v12 + 8))(v4);
LABEL_17:
      v13 = *(sub_10022C350(&qword_100CB1AC0) + 48);
      v14 = type metadata accessor for URL();
      if (!sub_100024D10(v4 + v13, 1, v14))
      {
        sub_100003B20();
        (*(v15 + 8))(v4 + v13);
      }

LABEL_10:
      if (*(v1 + v3 + 24))
      {
        sub_100006F14(v1 + v3);
      }

      return swift_deallocObject();
    case 2u:
      type metadata accessor for NotificationSubscription.Location();
      sub_100003D98();
      (*(v9 + 8))(v4);
      v7 = &qword_100CB1AB8;
      goto LABEL_9;
    case 3u:
    case 5u:
    case 8u:
      type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
      sub_100003D98();
      (*(v5 + 8))(v4);
      goto LABEL_10;
    case 4u:
    case 6u:

      goto LABEL_10;
    case 7u:
      type metadata accessor for Location();
      sub_100003D98();
      (*(v6 + 8))(v4);
      v7 = &qword_100CB1AB0;
LABEL_9:
      sub_10022C350(v7);
      sub_100040EDC();
      type metadata accessor for NotificationSubscription.Kind();
      sub_100003D98();
      (*(v10 + 8))(v4 + v2);
      goto LABEL_10;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_100078238()
{

  sub_1000244CC();

  return swift_deallocObject();
}

uint64_t sub_10007826C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
    sub_100006F14(v0 + 48);
  }

  return swift_deallocObject();
}

uint64_t sub_1000782D4()
{
  type metadata accessor for LocationsAction();
  sub_1000082C0();
  sub_10019252C();

  v3 = v1 + v0;
  sub_10001920C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      type metadata accessor for CurrentLocation();
      if (swift_getEnumCaseMultiPayload() <= 2)
      {
        goto LABEL_3;
      }

      break;
    case 1u:
LABEL_3:
      type metadata accessor for Location();
      sub_100003D98();
      (*(v4 + 8))(v3);
      break;
    case 2u:

      goto LABEL_5;
    case 5u:
LABEL_5:

      break;
    case 6u:
      sub_100187350(*v3, *(v3 + 8), *(v3 + 16));
      break;
    default:
      break;
  }

  if (*(v1 + v2 + 24))
  {
    sub_100006F14(v1 + v2);
  }

  return swift_deallocObject();
}

uint64_t sub_100078478(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_1000784D4(char a1)
{
  sub_100040690();
  v2 = static OS_dispatch_queue.main.getter();
  sub_10022C350(&qword_100CEBF18);
  firstly<A, B>(on:disposeOn:closure:)();

  v3 = static OS_dispatch_queue.geocode.getter();
  *(swift_allocObject() + 16) = a1;
  sub_10022C350(&qword_100CCC9D0);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v4 = static OS_dispatch_queue.main.getter();
  Promise.then<A, B>(on:disposeOn:closure:)();
}

unint64_t sub_100078694(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100109414(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100109514(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100006F14(v11);
  return v7;
}

void sub_100078758()
{
  v0 = [objc_opt_self() sharedService];
}

uint64_t sub_10007879C()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90BE8);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100078800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v86 = a3;
  v4 = sub_10022C350(&qword_100CEA7D8);
  __chkstk_darwin(v4 - 8);
  v81 = &v67 - v5;
  v70 = type metadata accessor for CachedCurrentLocation.EmbeddedLocation();
  __chkstk_darwin(v70);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v7 - 8);
  v77 = &v67 - v8;
  v9 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v9 - 8);
  v79 = &v67 - v10;
  v85 = type metadata accessor for Location();
  v72 = *(v85 - 8);
  __chkstk_darwin(v85);
  v68 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v67 - v13;
  v14 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v14 - 8);
  v74 = &v67 - v15;
  v73 = type metadata accessor for LocationsState();
  __chkstk_darwin(v73);
  v78 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v17 - 8);
  v80 = &v67 - v18;
  v19 = type metadata accessor for OSSignpostID();
  v82 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Location.Identifier();
  v76 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v75 = &v67 - v26;
  active = type metadata accessor for LocationViewerActiveLocationState();
  __chkstk_darwin(active - 8);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v30);
  v32 = (&v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v33);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  sub_100051048(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v35, type metadata accessor for ViewState);
  sub_100051048(&v35[v33[5]], v32, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v32;
    if (*&v35[v33[9] + 8] == 1)
    {
      v40 = [objc_opt_self() currentDevice];
      [v40 userInterfaceIdiom];

      LOBYTE(v40) = v35[v33[7]];
      sub_10004FD00(v35, type metadata accessor for ViewState);
      if ((v40 & 1) == 0)
      {

        goto LABEL_3;
      }
    }

    else
    {
      sub_10004FD00(v35, type metadata accessor for ViewState);
    }

    sub_100051048(v39 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v29, type metadata accessor for LocationViewerActiveLocationState);
    if (sub_100024D10(v29, 1, v22) != 1)
    {
      v47 = v76;
      v48 = v75;
      (*(v76 + 32))();
      static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v82 + 8))(v21, v19);
      v49 = v78;
      sub_100051048(v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v78, type metadata accessor for LocationsState);
      static CurrentLocation.placeholderIdentifier.getter();
      v50 = static Location.Identifier.== infix(_:_:)();
      v51 = *(v47 + 8);
      v52 = v51(v24, v22);
      if (v50)
      {
        sub_10022C350(&qword_100CA38C0);
        type metadata accessor for CurrentLocation();
        v53 = v80;
        swift_storeEnumTagMultiPayload();
        v54 = type metadata accessor for LocationOfInterest();
        sub_10001B350(v74, 1, 1, v54);
        LocationModelData.init(locationOfInterest:isPredictedLocation:)();
        v55 = enum case for LocationModel.current(_:);
        v56 = type metadata accessor for LocationModel();
        (*(*(v56 - 8) + 104))(v53, v55, v56);
        sub_10001B350(v53, 0, 1, v56);
      }

      else
      {
        __chkstk_darwin(v52);
        *(&v67 - 2) = v48;
        v53 = v80;
        sub_100030C98();
      }

      sub_10004FD00(v49, type metadata accessor for LocationsState);
      v59 = type metadata accessor for LocationModel();
      if (sub_100024D10(v53, 1, v59) != 1)
      {
        LocationModel.location.getter();

        v51(v48, v22);
        return (*(*(v59 - 8) + 8))(v53, v59);
      }

      v51(v48, v22);

      sub_1000180EC(v53, &unk_100CE2F20);
      goto LABEL_3;
    }

    static os_signpost_type_t.event.getter();
    v41 = v84;
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v82 + 8))(v21, v19);
    v42 = v77;
    sub_100035AD0(v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v77, &unk_100CE49F0);
    v43 = type metadata accessor for CurrentLocation();
    if (sub_100024D10(v42, 1, v43) == 1)
    {
      sub_1000180EC(v42, &unk_100CE49F0);
      v44 = v79;
      v45 = v85;
      sub_10001B350(v79, 1, 1, v85);
      v46 = v81;
    }

    else
    {
      v44 = v79;
      CurrentLocation.location.getter();
      sub_10004FD00(v42, &type metadata accessor for CurrentLocation);
      v45 = v85;
      v57 = sub_100024D10(v44, 1, v85);
      v46 = v81;
      if (v57 != 1)
      {

        v65 = *(v72 + 32);
        v66 = v69;
        v65(v69, v44, v45);
        v64 = v86;
        v65(v86, v66, v45);
        goto LABEL_23;
      }
    }

    sub_1000180EC(v44, &qword_100CA65D8);
    sub_1000161C0((v41 + 64), *(v41 + 88));
    dispatch thunk of CurrentLocationCacheManagerType.readCachedLocation()();
    v58 = type metadata accessor for CachedCurrentLocation();
    if (sub_100024D10(v46, 1, v58) == 1)
    {

      sub_1000180EC(v46, &qword_100CEA7D8);
LABEL_25:
      v36 = v86;
      v38 = 1;
      goto LABEL_26;
    }

    v61 = v71;
    CachedCurrentLocation.embeddedLocation.getter();

    (*(*(v58 - 8) + 8))(v46, v58);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10004FD00(v61, &type metadata accessor for CachedCurrentLocation.EmbeddedLocation);
      goto LABEL_25;
    }

    v62 = *(v72 + 32);
    v63 = v68;
    v62(v68, v61, v45);
    v64 = v86;
    v62(v86, v63, v45);
LABEL_23:
    v36 = v64;
    v38 = 0;
LABEL_26:
    v37 = v45;
    return sub_10001B350(v36, v38, 1, v37);
  }

  sub_10004FD00(v35, type metadata accessor for ViewState);
  sub_10004FD00(v32, type metadata accessor for ViewState.SecondaryViewState);
LABEL_3:
  v37 = v85;
  v36 = v86;
  v38 = 1;
  return sub_10001B350(v36, v38, 1, v37);
}

uint64_t sub_100079478()
{

  return sub_100072EC8();
}

uint64_t sub_1000794BC(uint64_t a1, uint64_t a2)
{

  return sub_1000302D8(a1, a2, v2);
}

uint64_t sub_1000794D4()
{

  return sub_100024D10(v0, 1, v1);
}

uint64_t sub_1000794F0(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_1000795E0()
{
}

void sub_1000795F8()
{
  if (*(v0 + 16))
  {
    sub_10005A708();
  }
}

uint64_t sub_100079620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_rootActivity) = a2;

  v10 = (a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId);
  *v10 = a3;
  v10[1] = a4;

  sub_10022C350(&unk_100CE49D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A3BD20;
  *(v11 + 32) = a2;
  v12 = *(type metadata accessor for NetworkActivityCompletion() + 24);
  v13 = type metadata accessor for NWActivity.CompletionReason();
  sub_10001B350(a5 + v12, 1, 1, v13);
  *a5 = v11;
  a5[1] = _swiftEmptyArrayStorage;
}

void sub_100079728()
{
  if (qword_100CA2718 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90BA0);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v3 = 136446722;
    NWActivity.domain.getter();
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = sub_100078694(v4, v5, &v13);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2082;
    NWActivity.label.getter();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_100078694(v7, v8, &v13);

    *(v3 + 14) = v9;
    *(v3 + 22) = 2082;
    if (NWActivity.parentActivity.getter())
    {

      v10 = 0xE300000000000000;
      v11 = 7562617;
    }

    else
    {
      v10 = 0xE200000000000000;
      v11 = 28526;
    }

    v12 = sub_100078694(v11, v10, &v13);

    *(v3 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activating parent network activity. domain=%{public}s, label=%{public}s, hasParent=%{public}s", v3, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  NWActivity.activate()();
}

void *sub_10007996C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10022C350(&qword_100CA3170);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_1000799DC()
{
  sub_10000E8AC();
  v29 = v1;
  v3 = v2;
  v34 = v4;
  v35 = v5;
  v37 = v6(0);
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100003848();
  v31 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = 0;
  v36 = *(v3 + 16);
  v33 = v8 + 16;
  v15 = (v8 + 8);
  v30 = (v8 + 32);
  v32 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v36 == v14)
    {

LABEL_15:
      sub_1000230F8();
      sub_10000C8F4();
      return;
    }

    if (v14 >= *(v3 + 16))
    {
      break;
    }

    v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v17 = *(v8 + 72);
    v18 = v3;
    (*(v8 + 16))(v13, v3 + v16 + v17 * v14, v37);
    v19 = v34(v13);
    if (v0)
    {
      (*v15)(v13, v37);

      goto LABEL_15;
    }

    if (v19)
    {
      v28 = *v30;
      v28(v31, v13, v37);
      v20 = v32;
      v38 = v32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v21 = v20;
      }

      else
      {
        v22 = sub_1000134F8();
        v29(v22);
        v21 = v38;
      }

      v3 = v18;
      v24 = v21[2];
      v23 = v21[3];
      v25 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v32 = (v24 + 1);
        v27 = v24;
        (v29)(v23 > 1, v24 + 1, 1);
        v25 = v32;
        v24 = v27;
        v3 = v18;
        v21 = v38;
      }

      ++v14;
      v21[2] = v25;
      v32 = v21;
      v28(v21 + v16 + v24 * v17, v31, v37);
    }

    else
    {
      (*v15)(v13, v37);
      ++v14;
    }
  }

  __break(1u);
}

uint64_t sub_100079D2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100079D8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100079DEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_100079E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000C778();
  v94 = v23;
  LODWORD(v89) = v24;
  v91 = v25;
  v101 = v26;
  v102 = v27;
  v99 = v28;
  v100 = v29;
  v31 = v30;
  v32 = type metadata accessor for TimeState();
  v33 = sub_100003AE8(v32);
  v92 = v34;
  __chkstk_darwin(v33);
  v93 = v35;
  sub_10001376C();
  v95 = v36;
  sub_1000038CC();
  v37 = type metadata accessor for Location();
  sub_1000037C4();
  v106 = v38;
  __chkstk_darwin(v39);
  sub_10001376C();
  v103 = v41;
  v104 = v40;
  sub_1000038CC();
  v98 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v105 = v42;
  __chkstk_darwin(v43);
  sub_10000FBD0();
  v97 = v44;
  v90 = v45;
  __chkstk_darwin(v46);
  sub_10000E70C();
  v48 = v47;
  if (a21)
  {
    v49 = swift_allocObject();
    *(v49 + 16) = a21;
    *(v49 + 24) = a22;
    v50 = sub_100003A60();
    sub_10007A47C(v50);

    sub_10007A4D0(v31, sub_100190294);

    v51 = sub_100003A60();
    sub_10002B028(v51);
  }

  v52 = v22;
  sub_1000161C0((v22 + 120), *(v22 + 144));
  v96 = v48;
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v53 = *(v106 + 16);
  v54 = v104;
  v83 = v31;
  v53(v104, v31, v37);
  v87 = v53;
  v88 = v106 + 16;
  type metadata accessor for WeatherDataUpdateRequestLog(0);
  sub_1008B1694();
  swift_allocObject();

  v86 = v89 & 1;
  v85 = sub_10005B8AC(0, v104, v86);
  __chkstk_darwin(v85);
  *(&v80 - 4) = v55;
  *(&v80 - 3) = v22;
  *(&v80 - 2) = v31;
  sub_10022C350(&qword_100CA6078);
  v89 = firstly<A>(closure:)();
  v53(v54, v31, v37);
  sub_100037324();
  sub_1000863F8(v91, v95);
  v56 = v105;
  v57 = v98;
  (*(v105 + 16))(v97, v96, v98);
  v58 = v106;
  v91 = *(v106 + 80);
  v82 = v37;
  v59 = (v91 + 24) & ~v91;
  v84 = v91 | 7;
  v60 = (v103 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = (*(v92 + 80) + v60 + 32) & ~*(v92 + 80);
  v62 = (v93 + *(v56 + 80) + v61) & ~*(v56 + 80);
  v63 = v62 + v90;
  v64 = v52;
  v81 = v52;
  v92 = (v62 + v90 + 9) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  v66 = *(v58 + 32);
  v106 = v58 + 32;
  v93 = v66;
  v66(v65 + v59, v104, v37);
  v67 = (v65 + v60);
  v68 = v100;
  *v67 = v99;
  v67[1] = v68;
  v69 = v102;
  v67[2] = v101;
  v67[3] = v69;
  sub_10003011C();
  sub_100086450(v95, v65 + v61);
  (*(v105 + 32))(v65 + v62, v97, v57);
  v70 = (v65 + v63);
  *v70 = v86;
  v70[1] = v94 & 1;
  v71 = v85;
  *(v65 + v92) = v85;

  v72 = v81;

  v73 = v71;

  v74 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  v75 = v104;
  v76 = v82;
  v87(v104, v83, v82);
  v77 = (v91 + 32) & ~v91;
  v78 = swift_allocObject();
  *(v78 + 16) = v73;
  *(v78 + 24) = v72;
  v93(v78 + v77, v75, v76);

  v79 = zalgo.getter();
  Promise.error(on:closure:)();

  (*(v105 + 8))(v96, v98);
  sub_10000536C();
}

uint64_t sub_10007A47C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10007A48C()
{

  return swift_deallocObject();
}

uint64_t sub_10007A4D0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    __chkstk_darwin(result);
    sub_10007A47C(v3);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
    sub_10002B028(a2);
  }

  return result;
}

uint64_t sub_10007A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = type metadata accessor for Location();
  v8 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a1 + 464);
  v13 = v32;
  *(a1 + 464) = 0x8000000000000000;
  sub_10007ADA4();
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = v14;
  v20 = v15;
  sub_10022C350(&qword_100CB6C20);
  v21 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18);
  v22 = v32;
  if (v21)
  {
    sub_10007ADA4();
    if ((v20 & 1) == (v24 & 1))
    {
      v19 = v23;
      goto LABEL_5;
    }

LABEL_9:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 464) = v22;
  if ((v20 & 1) == 0)
  {
    (*(v8 + 16))(v10, a2, v31);
    sub_10007AE54(v19, v10, _swiftEmptyArrayStorage, v22);
  }

  v25 = *(v22 + 56) + 8 * v19;
  sub_10005B850();
  v26 = *(*v25 + 16);
  sub_10005B874(v26);
  v27 = *v25;
  *(v27 + 16) = v26 + 1;
  v28 = v27 + 16 * v26;
  *(v28 + 32) = sub_10018F134;
  *(v28 + 40) = v11;
  return swift_endAccess();
}

uint64_t sub_10007A7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for WeatherApp();
  v29[1] = *(v3 - 8);
  __chkstk_darwin(v3);
  v4 = sub_10022C350(&qword_100CD5510);
  sub_1000037C4();
  v30 = v5;
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  sub_10022C350(&qword_100CD5518);
  sub_1000037C4();
  v31 = v9;
  v32 = v10;
  __chkstk_darwin(v9);
  v12 = v29 - v11;
  sub_10022C350(&qword_100CD5520);
  sub_1000037C4();
  v33 = v13;
  v34 = v14;
  __chkstk_darwin(v13);
  v16 = v29 - v15;
  sub_10022C350(&qword_100CD5450);
  v17 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  sub_1000359CC(v42);

  sub_100035B30(v42, &v39);
  sub_100720520();
  v18 = swift_allocObject();
  sub_100013188(&v39, v18 + 16);
  sub_10005B7F8();
  sub_10022C350(&qword_100CD5530);
  v19 = sub_10022E824(&qword_100CA2DD8);
  v20 = sub_100720340();
  v37 = v19;
  v38 = v20;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  sub_100010998();
  v22 = sub_100006F64(v21, &qword_100CD5510);
  Scene.extendedLaunchTestName(_:)();
  (*(v30 + 8))(v8, v4);
  v36 = v2;
  v23 = sub_10022C350(&qword_100CD5568);
  *&v39 = v4;
  *(&v39 + 1) = v22;
  sub_10000663C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_100720470();
  v26 = v31;
  Scene.commands<A>(content:)();
  (*(v32 + 8))(v12, v26);
  *&v39 = v26;
  *(&v39 + 1) = v23;
  v40 = OpaqueTypeConformance2;
  v41 = v25;
  sub_10001CBF8();
  swift_getOpaqueTypeConformance2();
  v27 = v33;
  static SceneBuilder.buildBlock<A>(_:)();
  (*(v34 + 8))(v16, v27);
  return sub_100006F14(v42);
}

uint64_t sub_10007AC8C()
{
  if (sub_100051CD4())
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_10007ACE4()
{
  if (sub_100051CD4())
  {
    type metadata accessor for _TaskModifier2();
    sub_10000381C();
    type metadata accessor for ModifiedContent();
    sub_10022E8C0();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    sub_10000381C();
    type metadata accessor for ModifiedContent();
    sub_10022E90C(&qword_100CA2DD0, &type metadata accessor for _TaskModifier);
  }

  sub_100007E30();
  return swift_getWitnessTable();
}

void sub_10007ADA4()
{
  sub_100019170();
  type metadata accessor for Location();
  sub_10005B6CC(&qword_100CA39F8, &type metadata accessor for Location);
  sub_100031BB0();
  sub_100011350();
}

void sub_10007AE88()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_1000BAF18(v7, v8, v9, v10, v11);
    v12 = sub_1000BCEFC();
    j__malloc_size(v12);
    sub_100016D38();
    v12[2] = v2;
    v12[3] = v13;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v12 != v0 || &v0[2 * v2 + 4] <= v12 + 4)
    {
      memmove(v12 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10022C350(&qword_100CB5AD0);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_10007AF74()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10007B088(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  type metadata accessor for WeatherDataUpdateRequestLog.Event(v3);
  sub_100003D98();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v7);
  sub_100006A88();
  sub_100087544();
  sub_1000161C0((a2 + 80), *(a2 + 104));
  return dispatch thunk of LocationMetadataManagerType.resolveAddress(for:)();
}

unint64_t sub_10007B164()
{
  result = qword_100CC7850;
  if (!qword_100CC7850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CC7850);
  }

  return result;
}

void sub_10007B1C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void *sub_10007B218()
{
  result = qword_100CC7870;
  if (!qword_100CC7870)
  {
    result = &type metadata for Double;
    atomic_store(&type metadata for Double, &qword_100CC7870);
  }

  return result;
}

uint64_t sub_10007B240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t a1), int a8, unsigned __int8 a9, uint64_t a10)
{
  LODWORD(v194) = a8;
  v217 = a7;
  v199 = a6;
  v214 = a3;
  v215 = a5;
  v218 = a4;
  v213 = a2;
  v222 = a10;
  LODWORD(v187) = a9;
  v207 = *v10;
  v12 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v12 - 8);
  v183 = v170 - v13;
  v14 = type metadata accessor for NewsDataModel();
  v176 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v178 = (v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = v15;
  __chkstk_darwin(v16);
  v180 = v170 - v17;
  v18 = type metadata accessor for WeatherData(0);
  v173 = *(v18 - 8);
  __chkstk_darwin(v18 - 8);
  v175 = (v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v174 = v19;
  __chkstk_darwin(v20);
  v179 = (v170 - v21);
  v209 = type metadata accessor for Location.Identifier();
  v221 = *(v209 - 8);
  __chkstk_darwin(v209);
  v182 = v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v23 - 8);
  v181 = v170 - v24;
  v25 = type metadata accessor for TimeState();
  v186 = *(v25 - 8);
  __chkstk_darwin(v25 - 8);
  v197 = v26;
  v206 = v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for AppConfiguration();
  v212 = *(v204 - 8);
  __chkstk_darwin(v204);
  v185 = v27;
  v203 = v170 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for DispatchWorkItemFlags();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v189 = v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for DispatchQoS();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v188 = (v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v205 = type metadata accessor for OSSignpostID();
  v198 = *(v205 - 8);
  v30 = *(v198 + 64);
  __chkstk_darwin(v205);
  v200 = v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v202 = v170 - v32;
  v33 = type metadata accessor for Location();
  v219 = *(v33 - 8);
  v220 = v33;
  __chkstk_darwin(v33);
  v208 = v34;
  v216 = v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for WeatherServiceLocationOptions();
  v196 = *(v211 - 8);
  __chkstk_darwin(v211);
  v201 = v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = v35;
  __chkstk_darwin(v36);
  v210 = v170 - v37;
  v38 = type metadata accessor for WeatherDataConfiguration();
  v195 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = v170 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CE2958);
  __chkstk_darwin(v41);
  v43 = v170 - v42;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v46 = v170 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  Location.coordinate.getter();
  if (v47 == 0.0 || (Location.coordinate.getter(), v48 == 0.0))
  {
    sub_1005B3D94(0xD000000000000038, 0x8000000100AE35D0);

    return sub_10018E604(a1);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v46);
    v50 = sub_100087544();
    v170[1] = v170;
    aBlock = v10[59];
    v51 = aBlock;
    __chkstk_darwin(v50);
    v170[-2] = v10;
    v170[-1] = v52;
    v171 = v52;
    __chkstk_darwin(v53);
    v172 = v10;
    v170[-2] = sub_10008764C;
    v170[-1] = v54;
    v170[0] = type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
    v170[0] = v51;

    v55 = *v43;
    v56 = *(v41 + 48);
    v58 = (v221 + 1);
    v57 = v221[1];
    v59 = &v43[v56];
    v60 = v209;
    v57(v59, v209);
    if (v55 != 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_10005C1D4(v46);
      return sub_100087544();
    }

    v221 = v58;
    AppConfiguration.weatherData.getter();
    WeatherDataConfiguration.intervalBetweenUpdates.getter();
    v62 = v61;
    (*(v195 + 8))(v40, v38);
    v63 = v171;
    v64 = v172;
    if (sub_10008765C(v62, v171, v213, v214, v218) & 1) != 0 || (v194)
    {
      AppConfiguration.locationDecimalPrecision.getter();
      WeatherServiceLocationOptions.init(decimalPrecision:limitsPrecision:)();
      v71 = v219;
      v72 = *(v219 + 16);
      v183 = (v219 + 16);
      v194 = v72;
      v73 = v216;
      v74 = v220;
      v72(v216, v63, v220);
      v182 = *(v71 + 80);
      v180 = &v208[(v182 + 24) & ~v182];
      v75 = v63;
      v76 = (v182 + 24) & ~v182;
      v181 = v76;
      v195 = v182 | 7;
      v77 = swift_allocObject();
      *(v77 + 16) = v64;
      v78 = *(v71 + 32);
      v219 = v71 + 32;
      v221 = v78;
      (v78)(v77 + v76, v73, v74);

      asyncMain(block:)();

      sub_1000161C0(v64 + 41, v64[44]);
      v79 = Location.id.getter();
      v80 = v64;
      sub_10005E8B8(v79, v81);

      swift_storeEnumTagMultiPayload();
      v82 = v222;
      sub_10005C1D4(v46);
      sub_100087544();
      v83 = v80[56];
      v84 = v202;
      OSSignpostID.init(log:)();
      LODWORD(v209) = v187 & 1;
      v173 = sub_100086BF4(v187 & 1);
      v85 = swift_allocObject();
      swift_weakInit();
      v86 = v198;
      v87 = *(v198 + 16);
      v174 = v198 + 16;
      v175 = v87;
      v88 = v200;
      v89 = v84;
      v90 = v205;
      v87(v200, v89, v205);
      v91 = v75;
      v92 = v220;
      v194(v73, v91, v220);
      v93 = v82;
      v176 = *(v86 + 80);
      v94 = v86;
      v95 = (v176 + 32) & ~v176;
      v177 = v30 + v182;
      v96 = (v30 + v182 + v95) & ~v182;
      v187 = v195 | v176;
      v97 = swift_allocObject();
      *(v97 + 16) = v85;
      *(v97 + 24) = v93;
      v98 = *(v94 + 32);
      v178 = (v94 + 32);
      v179 = v98;
      v98(v97 + v95, v88, v90);
      (v221)(v97 + v96, v73, v92);
      v228 = sub_100086CC8;
      v229 = v97;
      aBlock = _NSConcreteStackBlock;
      v225 = 1107296256;
      v226 = sub_1000742F0;
      v227 = &unk_100C74358;
      v99 = _Block_copy(&aBlock);

      v100 = v188;
      static DispatchQoS.unspecified.getter();
      v223 = _swiftEmptyArrayStorage;
      sub_1000675AC(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680);
      v101 = v171;
      sub_10006768C(&qword_100CD81D0, &qword_100CB4680);
      v102 = v189;
      v103 = v193;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v104 = v173;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v99);

      v192[1](v102, v103);
      v190[1](v100, v191);

      v105 = sub_100086BF4(v209);
      v106 = v216;
      v107 = v220;
      v108 = v194;
      v194(v216, v101, v220);
      v109 = (v182 + 16) & ~v182;
      v110 = v208;
      v111 = swift_allocObject();
      (v221)(v111 + v109, v106, v107);
      sub_10022C350(&qword_100CE2960);
      v193 = firstly<A, B>(on:disposeOn:closure:)();

      v112 = v205;
      v175(v200, v202, v205);
      v108(v106, v101, v107);
      v113 = v196;
      v114 = *(v196 + 16);
      v191 = v196 + 16;
      v192 = v114;
      (v114)(v201, v210, v211);
      v115 = v212;
      v116 = *(v212 + 16);
      v189 = (v212 + 16);
      v190 = v116;
      (v116)(v203, v217, v204);
      v188 = type metadata accessor for TimeState;
      sub_1000863F8(v199, v206);
      v117 = (v176 + 24) & ~v176;
      v118 = (v177 + v117) & ~v182;
      v119 = &v110[v118 + 7] & 0xFFFFFFFFFFFFFFF8;
      v120 = (v119 + *(v113 + 80) + 8) & ~*(v113 + 80);
      v121 = *(v113 + 80);
      v176 = v121;
      v122 = *(v115 + 80);
      v208 = &v122[v184];
      v123 = &v122[v184 + v120] & ~v122;
      v177 = v122;
      v185 += 7;
      v124 = (v185 + v123) & 0xFFFFFFFFFFFFFFF8;
      v182 = *(v186 + 80);
      v184 = (v182 + 32);
      v173 = (v182 + 32 + v124) & ~v182;
      v175 = (v173 + v197);
      v186 = v122 | v121;
      v174 = (v173 + v197) & 0xFFFFFFFFFFFFFFF8;
      v125 = swift_allocObject();
      *(v125 + 16) = v172;
      v179(v125 + v117, v200, v112);
      (v221)(v125 + v118, v216, v220);
      *(v125 + v119) = v222;
      v126 = *(v113 + 32);
      v187 = v113 + 32;
      v200 = v126;
      v127 = v125 + v120;
      v128 = v201;
      (v126)(v127, v201, v211);
      v129 = *(v212 + 32);
      v212 += 32;
      v179 = v129;
      v130 = v125 + v123;
      v131 = v203;
      v132 = v204;
      v129(v130, v203, v204);
      v133 = (v125 + v124);
      v134 = v214;
      *v133 = v213;
      v133[1] = v134;
      v135 = v215;
      v133[2] = v218;
      v133[3] = v135;
      v178 = type metadata accessor for TimeState;
      v136 = v206;
      sub_100086450(v206, v125 + v173);
      *(v175 + v125) = v209;
      *(v125 + v174 + 8) = v207;

      v137 = zalgo.getter();
      v175 = Promise.then<A>(on:closure:)();

      v138 = v216;
      v194(v216, v171, v220);
      v139 = v211;
      (v192)(v128, v210, v211);
      (v190)(v131, v217, v132);
      sub_1000863F8(v199, v136);
      v140 = &v180[v176] & ~v176;
      v141 = &v208[v140] & ~v177;
      v142 = (v185 + v141) & 0xFFFFFFFFFFFFFFF8;
      v143 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
      v144 = &v184[v143] & ~v182;
      v217 = (v144 + v197);
      v145 = (v144 + v197) & 0xFFFFFFFFFFFFFFF8;
      v146 = swift_allocObject();
      *(v146 + 16) = v222;
      (v221)(v146 + v181, v138, v220);
      (v200)(v146 + v140, v201, v139);
      v179(v146 + v141, v203, v204);
      *(v146 + v142) = v172;
      v147 = (v146 + v143);
      v148 = v214;
      *v147 = v213;
      v147[1] = v148;
      v149 = v215;
      v147[2] = v218;
      v147[3] = v149;
      sub_100086450(v206, v146 + v144);
      *(v217 + v146) = v209;
      *(v146 + v145 + 8) = v207;

      v150 = zalgo.getter();
      Promise.error(on:closure:)();

      (*(v198 + 8))(v202, v205);
      return (*(v196 + 8))(v210, v211);
    }

    UnfairLock.lock()();
    v65 = v182;
    Location.identifier.getter();
    swift_beginAccess();
    v66 = v181;
    sub_1000FEC1C(v65, v181);
    swift_endAccess();
    v57(v65, v60);
    sub_100018144(v66, &qword_100CADBA0);
    UnfairLock.unlock()();
    v67 = Location.id.getter();
    v68 = v183;
    sub_1000864C0(v67, v69, v218);

    v70 = type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v68, 1, v70) == 1)
    {
      sub_100018144(v68, &qword_100CA37B0);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v151 = *(sub_10022C350(&qword_100CA75D8) + 64);
        v217 = type metadata accessor for WeatherData;
        v152 = v179;
        sub_100086450(v68, v179);
        v218 = type metadata accessor for NewsDataModel;
        v153 = v180;
        sub_100086450(v68 + v151, v180);
        sub_100087544();
        v221 = sub_100086BF4(v187 & 1);
        v154 = swift_allocObject();
        v215 = v154;
        swift_weakInit();
        v155 = v175;
        sub_1000863F8(v152, v175);
        v156 = v219;
        v157 = v216;
        v158 = v63;
        v159 = v220;
        (*(v219 + 16))(v216, v158, v220);
        v160 = v178;
        sub_1000863F8(v153, v178);
        v161 = (*(v173 + 80) + 32) & ~*(v173 + 80);
        v162 = (v174 + *(v156 + 80) + v161) & ~*(v156 + 80);
        v163 = &v208[*(v176 + 80) + v162] & ~*(v176 + 80);
        v164 = swift_allocObject();
        *(v164 + 16) = v154;
        *(v164 + 24) = v222;
        sub_100086450(v155, v164 + v161);
        (*(v156 + 32))(v164 + v162, v157, v159);
        sub_100086450(v160, v164 + v163);
        v228 = sub_1008B038C;
        v229 = v164;
        aBlock = _NSConcreteStackBlock;
        v225 = 1107296256;
        v226 = sub_1000742F0;
        v227 = &unk_100C742E0;
        v165 = _Block_copy(&aBlock);

        v166 = v188;
        static DispatchQoS.unspecified.getter();
        v223 = _swiftEmptyArrayStorage;
        sub_1000675AC(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_10006768C(&qword_100CD81D0, &qword_100CB4680);
        v167 = v189;
        v168 = v193;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v169 = v221;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v165);

        v192[1](v167, v168);
        v190[1](v166, v191);
        sub_100087544();
        sub_100087544();
      }

      sub_100087544();
    }

    sub_10018E2C0(0, 0);
    return sub_10018E604(v63);
  }
}

uint64_t sub_10007CEF8()
{
  swift_weakDestroy();
  sub_100007E8C();

  return swift_deallocObject();
}

uint64_t sub_10007D55C()
{
  v23 = type metadata accessor for Location();
  sub_1000037C4();
  v2 = v1;
  v19 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v22 = type metadata accessor for WeatherServiceLocationOptions();
  sub_1000037C4();
  v6 = v5;
  v18 = (v19 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v21 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v10 = v9;
  v11 = (v18 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v13 = (((*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = type metadata accessor for TimeState();
  sub_100003AE8(v14);
  v20 = (v13 + *(v15 + 80) + 32) & ~*(v15 + 80);

  (*(v2 + 8))(v0 + v19, v23);
  (*(v6 + 8))(v0 + v18, v22);
  (*(v10 + 8))(v0 + v11, v21);

  type metadata accessor for Date();
  sub_100003D98();
  (*(v16 + 8))(v0 + v20);

  return swift_deallocObject();
}

void sub_10007D7F4()
{
  sub_10000C778();
  v2 = v1;
  v29 = v3;
  v4 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v28 = v0;
  v11 = *v0;
  sub_100086814();
  sub_10005E46C(v12, v13);
  sub_1000251E0();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v30 = v11;
  v31 = v11 + 56;
  sub_100071DC8();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    if (((1 << (v14 & v16)) & *(v31 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10003140C();
      v24();
      v32 = *v28;
      v25 = sub_100014AD8();
      sub_10007DA64(v25, v26, isUniquelyReferenced_nonNull_native);
      *v28 = v32;
      sub_10003140C();
      v27();
      goto LABEL_7;
    }

    v18 = v6[9] * v17;
    v19 = v6[2];
    v19(v10, *(v30 + 48) + v18, v4);
    sub_100086814();
    sub_10005E46C(&qword_100CA3A48, v20);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = v6[1];
    v22(v10, v4);
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v22(v2, v4);
  v19(v29, *(v30 + 48) + v18, v4);
LABEL_7:
  sub_10000536C();
}

uint64_t sub_10007DA64(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for Location.Identifier();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100191694();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_10005E4B4();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_10005E46C(&qword_100CA3A40, &type metadata accessor for Location.Identifier);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005E46C(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1006A1E48();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_10007DD28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CD5528);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007DDB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007DE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10022C350(&qword_100CD5528);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10007DEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007DF18(uint64_t a1)
{
  v291 = a1;
  v286 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v287 = v3 - v2;
  v4 = type metadata accessor for LocationPreviewViewState(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v289 = v7 - v6;
  v8 = sub_10022C350(&qword_100CADBA0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_100003990(&v251 - v10);
  v262 = sub_10022C350(&qword_100CA7030);
  sub_1000037C4();
  v261 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100003990(&v251 - v13);
  v14 = sub_10022C350(&qword_100CA37B0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_10000E70C();
  sub_100003990(v19);
  v20 = sub_10022C350(&qword_100CA3898);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_10000E70C();
  sub_100003990(v25);
  v26 = sub_10022C350(&qword_100CA6898);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_10000E70C();
  sub_100003990(v29);
  v281 = type metadata accessor for OpenL2Descriptor(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_10000E70C();
  sub_100003990(v32);
  v33 = sub_10022C350(&qword_100CA65D8);
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_100003848();
  v283 = v35;
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  sub_100003990(v38);
  v284 = type metadata accessor for Location();
  sub_1000037C4();
  v288 = v39;
  __chkstk_darwin(v40);
  sub_100003848();
  v290 = v41;
  __chkstk_darwin(v42);
  sub_10000E70C();
  sub_100003990(v43);
  v44 = sub_10022C350(&qword_100CA3588);
  sub_100003810(v44);
  sub_100003828();
  __chkstk_darwin(v45);
  type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_1000037D8();
  v49 = v48 - v47;
  v50 = sub_10022C350(&unk_100CE2F20);
  sub_100003810(v50);
  sub_100003828();
  __chkstk_darwin(v51);
  v53 = &v251 - v52;
  v276 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v277 = v54;
  __chkstk_darwin(v55);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_10000E70C();
  sub_100003990(v58);
  v285 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v282 = v59;
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  v63 = &v251 - v62;
  __chkstk_darwin(v64);
  sub_10000E70C();
  v280 = v65;
  active = type metadata accessor for LocationViewerActiveLocationState();
  v67 = sub_100003810(active);
  __chkstk_darwin(v67);
  sub_1000037D8();
  v70 = v69 - v68;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v71);
  sub_1000037D8();
  v74 = (v73 - v72);
  v75 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v76);
  sub_1000037D8();
  v79 = v78 - v77;
  v291 = *(v291 + 64);
  sub_100095210(v291 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v78 - v77, type metadata accessor for ViewState);
  sub_100095210(v79 + v75[5], v74, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000048C8();
    sub_10009F020(v74, type metadata accessor for ViewState.SecondaryViewState);
LABEL_10:
    v83 = v288;
    v82 = v289;
    v84 = v290;
LABEL_11:
    v85 = v287;
    v95 = v291;
    goto LABEL_12;
  }

  v274 = *v74;
  if (*(v79 + v75[9] + 8) == 1)
  {
    v80 = [objc_opt_self() currentDevice];
    [v80 userInterfaceIdiom];

    LOBYTE(v80) = *(v79 + v75[7]);
    sub_1000048C8();
    v81 = v285;
    if ((v80 & 1) == 0)
    {
      sub_10006989C();
LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
    sub_1000048C8();
    v81 = v285;
  }

  sub_100095210(v274 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v70, type metadata accessor for LocationViewerActiveLocationState);
  sub_1000038B4(v70, 1, v81);
  if (v111)
  {
    goto LABEL_9;
  }

  v93 = v282;
  v94 = v280;
  (*(v282 + 32))(v280, v70, v81);
  v95 = v291;
  sub_100095210(v291 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v49, type metadata accessor for LocationsState);
  static CurrentLocation.placeholderIdentifier.getter();
  v96 = static Location.Identifier.== infix(_:_:)();
  v97 = *(v93 + 8);
  v253 = v93 + 8;
  v252 = v97;
  v98 = (v97)(v63, v81);
  if (v96)
  {
    sub_10022C350(&qword_100CA38C0);
    type metadata accessor for CurrentLocation();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for LocationOfInterest();
    sub_100003934();
    sub_10001B350(v99, v100, v101, v102);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v103 = v276;
    (*(v277 + 104))(v53, enum case for LocationModel.current(_:), v276);
    sub_10000E7B0();
    sub_10001B350(v104, v105, v106, v103);
    v107 = v94;
  }

  else
  {
    __chkstk_darwin(v98);
    *(&v251 - 2) = v94;
    sub_100030C98();
    v107 = v94;
    v103 = v276;
  }

  sub_10009F020(v49, type metadata accessor for LocationsState);
  sub_1000038B4(v53, 1, v103);
  v84 = v290;
  v114 = v278;
  if (v111)
  {
    sub_1000180EC(v53, &unk_100CE2F20);
    if (qword_100CA2760 != -1)
    {
      sub_10000FAB4();
    }

    v115 = type metadata accessor for Logger();
    sub_10000703C(v115, qword_100D90C78);
    v116 = v271;
    (*(v282 + 16))(v271, v107, v81);
    v117 = Logger.logObject.getter();
    v118 = v107;
    v119 = static os_log_type_t.error.getter();
    v120 = os_log_type_enabled(v117, v119);
    v83 = v288;
    if (v120)
    {
      v121 = swift_slowAlloc();
      v122 = v81;
      v123 = swift_slowAlloc();
      v292 = v123;
      sub_10000CB2C(7.2225e-34);
      sub_10005BDF0();
      v124 = dispatch thunk of CustomStringConvertible.description.getter();
      v126 = v125;
      v127 = v116;
      v128 = v252;
      v252(v127, v122);
      v129 = sub_100078694(v124, v126, &v292);
      v95 = v291;

      *(v121 + 14) = v129;
      _os_log_impl(&_mh_execute_header, v117, v119, "Could not find LocationModel for active location, identifier=%{private,mask.hash}s", v121, 0x16u);
      sub_100006F14(v123);
      sub_100003884();
      sub_100003884();
      sub_10006989C();

      v128(v280, v122);
      v84 = v290;
    }

    else
    {
      sub_10006989C();

      v159 = v252;
      v252(v116, v81);
      v159(v118, v81);
    }
  }

  else
  {
    v141 = v277;
    (*(v277 + 32))(v278, v53, v103);
    v142 = v272;
    LocationModel.coalesceLocation.getter();
    v143 = v284;
    sub_1000038B4(v142, 1, v284);
    if (v144)
    {
      sub_1000180EC(v142, &qword_100CA65D8);
      v83 = v288;
      if (qword_100CA2760 != -1)
      {
        sub_10000FAB4();
      }

      v145 = type metadata accessor for Logger();
      sub_10000703C(v145, qword_100D90C78);
      v146 = *(v141 + 16);
      v147 = v268;
      v146(v268, v114, v103);
      v148 = v114;
      v149 = Logger.logObject.getter();
      LODWORD(v282) = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v149, v282))
      {
        v150 = v147;
        v151 = swift_slowAlloc();
        v276 = swift_slowAlloc();
        v292 = v276;
        sub_10000CB2C(7.2225e-34);
        v146(v266, v150, v103);
        v152 = String.init<A>(describing:)();
        v154 = v153;
        v155 = *(v141 + 8);
        v155(v150, v103);
        v156 = sub_100078694(v152, v154, &v292);

        *(v151 + 14) = v156;
        _os_log_impl(&_mh_execute_header, v149, v282, "Could not find coalesceLocation for active LocationModel, locationModel=%{private,mask.hash}s", v151, 0x16u);
        sub_100006F14(v276);
        sub_100003884();
        sub_100003884();
        sub_10006989C();

        v155(v278, v103);
      }

      else
      {
        sub_10006989C();

        v170 = *(v141 + 8);
        v170(v147, v103);
        v170(v148, v103);
      }

      goto LABEL_50;
    }

    v160 = v142;
    v83 = v288;
    v161 = v270;
    (*(v288 + 32))(v270, v160, v143);
    v162 = *sub_100016D74();
    v163 = OBJC_IVAR____TtC7Weather21AppContinuationBridge_pendingOpenL2Descriptor;
    swift_beginAccess();
    v164 = v162 + v163;
    v165 = v269;
    sub_100095334(v164, v269);
    sub_1000038B4(v165, 1, v281);
    if (v166)
    {
      sub_10006989C();

      (*(v83 + 8))(v161, v143);
      v167 = sub_100019D70();
      v168(v167, v103);
      sub_10003C730();
      v169();
      sub_1000180EC(v165, &qword_100CA6898);
    }

    else
    {
      v172 = sub_100074E18();
      v173 = v267;
      sub_1000D38EC(v172, v267, v174);
      if (*(v173 + 1) != 1)
      {
        v175 = v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
        v176 = *(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

        v177 = Location.id.getter();
        v178 = v264;
        sub_1000864C0(v177, v179, v176);

        v180 = type metadata accessor for LocationWeatherDataState(0);
        sub_1000038B4(v178, 1, v180);
        if (v111)
        {
          sub_1000180EC(v178, &qword_100CA37B0);
        }

        else
        {
          v185 = v258;
          sub_1001A0D3C();
          sub_10001F5A8();
          v186 = v178;
          v187 = v185;
          sub_10009F020(v186, v188);
          v189 = type metadata accessor for WeatherData(0);
          sub_1000038B4(v187, 1, v189);
          if (!v190)
          {
            v208 = v260;
            WeatherDataModel.hourlyForecast.getter();
            sub_100049B0C();
            sub_10009F020(v187, v209);
            v210 = v262;
            Forecast.forecast.getter();
            (*(v261 + 8))(v208, v210);

            v211 = *(v175 + 16);

            v212 = v270;
            v213 = Location.id.getter();
            v214 = v254;
            sub_1000864C0(v213, v215, v211);

            sub_1000038B4(v214, 1, v180);
            if (v216)
            {
              sub_1000180EC(v214, &qword_100CA37B0);
              v234 = v255;
              sub_100003934();
              sub_10001B350(v217, v218, v219, v189);
            }

            else
            {
              v234 = v255;
              sub_1001A0D3C();
              sub_10001F5A8();
              sub_10009F020(v214, v235);
            }

            sub_100016D74();
            sub_100011754();
            v237 = *(v236 - 256);
            v238 = v284;
            v239(v237, v212, v284);
            sub_10000E7B0();
            sub_10001B350(v240, v241, v242, v238);
            v243 = v263;
            v244 = v285;
            (*(v282 + 16))(v263, v280, v285);
            sub_10000E7B0();
            sub_10001B350(v245, v246, v247, v244);
            sub_100365360(v234, v237, v243);
            sub_10006989C();

            sub_1000180EC(v243, &qword_100CADBA0);
            sub_1000180EC(v237, &qword_100CA65D8);
            sub_1000180EC(v234, &qword_100CA3898);
            sub_10001CAE8();
            sub_10009F020(v267, v248);
            (*(v83 + 8))(v212, v238);
            v249 = sub_100019D70();
            v250(v249, v276);
LABEL_50:
            sub_10003C730();
            v171();
            v82 = v289;
            goto LABEL_11;
          }

          sub_1000180EC(v187, &qword_100CA3898);
          v173 = v267;
        }
      }

      sub_10006989C();

      sub_10001CAE8();
      sub_10009F020(v173, v191);
      v192 = sub_100037C98();
      v193(v192);
      v194 = sub_100019D70();
      v195(v194, v103);
      sub_10003C730();
      v196();
    }
  }

  v82 = v289;
  v85 = v287;
LABEL_12:
  sub_100095210(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v85, type metadata accessor for ModalViewState);
  if (swift_getEnumCaseMultiPayload())
  {
    v86 = type metadata accessor for ModalViewState;
    goto LABEL_14;
  }

  sub_1000D38EC(v85, v82, type metadata accessor for LocationPreviewViewState);
  v90 = v283;
  sub_1006E6234(v283);
  v91 = v284;
  sub_1000038B4(v90, 1, v284);
  if (v111)
  {
    sub_1000108A8();
    v92 = &qword_100CA65D8;
  }

  else
  {
    (*(v83 + 32))(v84, v90, v91);
    v108 = *sub_100016D74();
    v109 = OBJC_IVAR____TtC7Weather21AppContinuationBridge_pendingOpenL2Descriptor;
    swift_beginAccess();
    v110 = v108 + v109;
    v90 = v275;
    sub_100095334(v110, v275);
    sub_1000038B4(v90, 1, v281);
    if (!v111)
    {
      v130 = sub_100074E18();
      v85 = v273;
      sub_1000D38EC(v130, v273, v131);
      if ((*(v85 + 1) & 1) != 0 && (*(v85 + *(v281 + 28) + 16) & 1) == 0)
      {
        sub_1000161C0((v279 + 56), *(v279 + 80));
        sub_10058A09C();
        if (v132)
        {
          v133 = v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
          v134 = *(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

          v135 = Location.id.getter();
          v136 = v265;
          sub_1000864C0(v135, v137, v134);

          v138 = type metadata accessor for LocationWeatherDataState(0);
          sub_1000038B4(v136, 1, v138);
          if (v111)
          {
            v139 = &qword_100CA37B0;
            v140 = v136;
          }

          else
          {
            v181 = v259;
            sub_1001A0D3C();
            sub_10001F5A8();
            sub_10009F020(v136, v182);
            v183 = type metadata accessor for WeatherData(0);
            sub_1000038B4(v181, 1, v183);
            if (v184)
            {
              v139 = &qword_100CA3898;
              v140 = v181;
            }

            else
            {
              v197 = v260;
              WeatherDataModel.hourlyForecast.getter();
              sub_100049B0C();
              sub_10009F020(v181, v198);
              v199 = v262;
              Forecast.forecast.getter();
              (*(v261 + 8))(v197, v199);

              v200 = *(v133 + 16);

              v201 = Location.id.getter();
              v202 = v256;
              sub_1000864C0(v201, v203, v200);

              sub_1000038B4(v202, 1, v138);
              if (v204)
              {
                sub_1000180EC(v202, &qword_100CA37B0);
                v220 = v257;
                sub_100003934();
                sub_10001B350(v205, v206, v207, v183);
              }

              else
              {
                v220 = v257;
                sub_1001A0D3C();
                sub_10001F5A8();
                sub_10009F020(v202, v221);
              }

              sub_100016D74();
              sub_100011754();
              v223 = *(v222 - 256);
              v224(v223, v84, v91);
              sub_10000E7B0();
              sub_10001B350(v225, v226, v227, v91);
              v228 = v263;
              sub_100003934();
              sub_10001B350(v229, v230, v231, v285);
              sub_100365360(v220, v223, v228);
              sub_1000180EC(v228, &qword_100CADBA0);
              sub_1000180EC(v223, &qword_100CA65D8);
              v139 = &qword_100CA3898;
              v140 = v220;
            }
          }

          sub_1000180EC(v140, v139);
          v232 = sub_10000ED08();
          v233(v232);
          sub_1000108A8();
          sub_10001CAE8();
          v88 = v273;
          return sub_10009F020(v88, v87);
        }
      }

      v157 = sub_10000ED08();
      v158(v157);
      sub_1000108A8();
      v86 = type metadata accessor for OpenL2Descriptor;
LABEL_14:
      v87 = v86;
      v88 = v85;
      return sub_10009F020(v88, v87);
    }

    v112 = sub_10000ED08();
    v113(v112);
    sub_1000108A8();
    v92 = &qword_100CA6898;
  }

  return sub_1000180EC(v90, v92);
}

uint64_t sub_10007F750()
{
  sub_100060C5C();
  sub_10022C350(&qword_100CB6D18);
  type metadata accessor for WeatherNetworkActivity();
  sub_100067638(&qword_100CB6D20, &qword_100CB6D18);
  Sequence.first<A>(map:)();
}

uint64_t sub_10007F81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v34 = a8;
  v27 = a5;
  v28 = a7;
  v29 = a2;
  v30 = a6;
  v25 = a3;
  v26 = a4;
  v32 = a9;
  v33 = a1;
  Policy = type metadata accessor for WeatherServiceCacheReadPolicy();
  v9 = *(Policy - 8);
  __chkstk_darwin(Policy);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CAD030);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for WeatherServiceCaching.Options();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CAD038);
  __chkstk_darwin(v19 - 8);
  v21 = &v25 - v20;
  v22 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v22 - 8);
  sub_1000302D8(v25, &v25 - v23, &qword_100CACE08);
  sub_1000302D8(v26, v21, &qword_100CAD038);
  (*(v16 + 16))(v18, v27, v15);
  sub_1000302D8(v28, v14, &qword_100CAD030);

  static WeatherServiceCacheReadConfig.unexpiredExactMatches.getter();
  (*(v9 + 104))(v11, enum case for WeatherServiceCacheReadPolicy.useCache(_:), Policy);
  return WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:cacheReadPolicy:updateCacheAsynchronously:)();
}

uint64_t sub_10007FB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9)
{
  v10 = v9;
  LODWORD(v87) = a8;
  v80 = a7;
  v103 = a9;
  v83 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v95 = *(Options - 8);
  v79 = *(v95 + 64);
  __chkstk_darwin(Options);
  v101 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Location();
  v94 = *(v100 - 8);
  v78 = *(v94 + 64);
  __chkstk_darwin(v100);
  v99 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v16 - 8);
  v18 = &v67 - v17;
  v105 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  v91 = *(v105 - 8);
  v75 = *(v91 + 64);
  __chkstk_darwin(v105);
  v97 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v67 - v21;
  v98 = type metadata accessor for AppConfiguration();
  v90 = *(v98 - 8);
  v74 = *(v90 + 64);
  __chkstk_darwin(v98);
  v96 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v92 = &v67 - v25;
  v104 = type metadata accessor for OSSignpostID();
  v89 = *(v104 - 8);
  v26 = *(v89 + 64);
  __chkstk_darwin(v104);
  v93 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v67 - v28;
  Location.coordinate.getter();
  v31 = v30;
  v32 = a1;
  Location.coordinate.getter();
  v72 = [objc_allocWithZone(CLLocation) initWithLatitude:v31 longitude:v33];
  v34 = *(v10 + 448);
  v77 = v29;
  OSSignpostID.init(log:)();
  sub_1000161C0((v10 + 120), *(v10 + 144));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v35 = v10;
  sub_1000161C0((v10 + 280), *(v10 + 304));
  Location.timeZone.getter();
  v36 = type metadata accessor for TimeZone();
  sub_10001B350(v18, 0, 1, v36);
  v73 = v22;
  dispatch thunk of ProductRequirementsFactoryType.appRequiredProducts(for:)();
  sub_100018144(v18, &qword_100CACE08);
  sub_10022C350(&qword_100CE2980);
  v88 = swift_allocBox();
  v38 = v37;
  Fetched = type metadata accessor for WeatherServiceLastFetched();
  sub_10001B350(v38, 1, 1, Fetched);
  v69 = v87 & 1;
  v76 = sub_100086BF4(v87 & 1);
  v87 = swift_allocObject();
  swift_weakInit();
  v40 = *(v10 + 56);
  v71 = *(v10 + 48);
  v70 = v40;
  v68 = v10;
  v41 = v89;
  (*(v89 + 16))(v93, v29, v104);
  v42 = v94;
  (*(v94 + 16))(v99, v32, v100);
  v43 = v91;
  (*(v91 + 16))(v97, v22, v105);
  v44 = v95;
  (*(v95 + 16))(v101, v80, Options);
  sub_10042F370(v35 + 408, &v108);
  v45 = v90;
  (*(v90 + 16))(v96, v92, v98);
  v46 = (*(v41 + 80) + 33) & ~*(v41 + 80);
  v47 = (v26 + *(v42 + 80) + v46) & ~*(v42 + 80);
  v48 = (v78 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (*(v43 + 80) + v48 + 8) & ~*(v43 + 80);
  v50 = (v75 + *(v44 + 80) + v49) & ~*(v44 + 80);
  v75 = (v79 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 47) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = (*(v45 + 80) + v78 + 8) & ~*(v45 + 80);
  v52 = swift_allocObject();
  v54 = v103;
  v53 = v104;
  *(v52 + 16) = v87;
  *(v52 + 24) = v54;
  *(v52 + 32) = v69;
  (*(v41 + 32))(v52 + v46, v93, v53);
  (*(v94 + 32))(v52 + v47, v99, v100);
  v55 = v72;
  *(v52 + v48) = v72;
  (*(v43 + 32))(v52 + v49, v97, v105);
  (*(v95 + 32))(v52 + v50, v101, Options);
  v56 = (v52 + v75);
  v57 = v70;
  *v56 = v71;
  v56[1] = v57;
  sub_100013188(&v108, v52 + v79);
  *(v52 + v80) = v88;
  *(v52 + v78) = v68;
  v58 = v90;
  v59 = v98;
  (*(v90 + 32))(v52 + v51, v96, v98);
  aBlock[4] = sub_100090C6C;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C74420;
  v60 = _Block_copy(aBlock);

  v61 = v55;

  v62 = v81;
  static DispatchQoS.unspecified.getter();
  v106 = _swiftEmptyArrayStorage;
  sub_1000675AC(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_10006768C(&qword_100CD81D0, &qword_100CB4680);
  v63 = v82;
  v64 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v65 = v76;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v60);

  (*(v86 + 8))(v63, v64);
  (*(v84 + 8))(v62, v85);
  (*(v91 + 8))(v73, v105);
  (*(v58 + 8))(v92, v59);
  (*(v89 + 8))(v77, v104);
}

uint64_t sub_100080700()
{
  v32 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v2 = v1;
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v28 = v3;
  v5 = *(v4 + 64);
  v31 = type metadata accessor for Location();
  sub_1000037C4();
  v7 = v6;
  v29 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  sub_100071A38();
  v9 = v8 & 0xFFFFFFFFFFFFFFF8;
  v25 = v8 & 0xFFFFFFFFFFFFFFF8;
  v30 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  sub_1000037C4();
  v11 = v10;
  v12 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v22 = v12;
  v14 = *(v13 + 64);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  sub_1000037C4();
  v16 = v15;
  v23 = (v12 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  sub_100071A38();
  v24 = ((v17 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v19 = v18;
  v20 = (*(v19 + 80) + ((((v24 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v19 + 80);

  (*(v2 + 8))(v0 + v28, v32);
  (*(v7 + 8))(v0 + v29, v31);

  (*(v11 + 8))(v0 + v22, v30);
  (*(v16 + 8))(v0 + v23, Options);

  sub_100006F14(v0 + v24);

  (*(v19 + 8))(v0 + v20, v26);
  sub_10006A920();

  return swift_deallocObject();
}

id sub_100080AC4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___sessionObserver] = 0;
  *&v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___shortcutItemHandlerManager] = 0;
  v2 = &v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___continueUserActivityHandlerManager];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___stateManager];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___displayMetricsMonitor] = 0;
  v4 = &v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___windowFocusManager];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v0[OBJC_IVAR____TtC7Weather13SceneDelegate_windowSizeChangingObservation] = 0;
  *&v0[OBJC_IVAR____TtC7Weather13SceneDelegate_sceneResizeMonitor] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100080B78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100080BC8()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100080D18()
{
  if (!qword_100CE4198)
  {
    sub_10022E824(&unk_100CE0F40);
    sub_10006768C(&qword_100CA4CD0, &unk_100CE0F40);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE4198);
    }
  }
}

void sub_100080DBC()
{
  sub_100080D18();
  if (v0 <= 0x3F)
  {
    sub_10006126C();
    if (v1 <= 0x3F)
    {
      sub_100009994();
      if (v2 <= 0x3F)
      {
        sub_1000612C8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100080E90()
{
  sub_100007A00(319, &qword_100CE0DE8);
  if (v0 <= 0x3F)
  {
    sub_100007BB8(319, &qword_100CADCC8, &type metadata accessor for ScenePhase);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for WeatherMapStatusBarColorSceneModifier()
{
  result = qword_100CB7578;
  if (!qword_100CB7578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100080F8C()
{
  if (!qword_100CB7588)
  {
    sub_10022E824(&qword_100CB3688);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB7588);
    }
  }
}

void sub_100080FF0()
{
  sub_1000810EC();
  if (v0 <= 0x3F)
  {
    sub_1000613B8(319, &qword_100CB8468, &type metadata accessor for FinishLaunchTestAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000613B8(319, &unk_100CB8470, type metadata accessor for ExtendedAppLaunchState, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000810EC()
{
  result = qword_100CE0DF0;
  if (!qword_100CE0DF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CE0DF0);
  }

  return result;
}

uint64_t sub_100081148()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100081204()
{
  result = qword_100CE0F58;
  if (!qword_100CE0F58)
  {
    sub_10022E824(&qword_100CE0F60);
    sub_10006143C();
    sub_100081290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0F58);
  }

  return result;
}

unint64_t sub_100081290()
{
  result = qword_100CE0F98;
  if (!qword_100CE0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0F98);
  }

  return result;
}

unint64_t sub_1000812E4()
{
  result = qword_100CE11B8;
  if (!qword_100CE11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE11B8);
  }

  return result;
}

unint64_t sub_100081338()
{
  result = qword_100CE1040;
  if (!qword_100CE1040)
  {
    sub_10022E824(&qword_100CDCD58);
    sub_100061520(&qword_100CE1048, &type metadata accessor for LegibilityWeight);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1040);
  }

  return result;
}

unint64_t sub_1000813FC()
{
  result = qword_100CB75C8;
  if (!qword_100CB75C8)
  {
    sub_10022E824(&qword_100CB75B8);
    sub_100006F64(&qword_100CB75D0, &qword_100CB75C0);
    sub_100006F64(&qword_100CB75D8, &qword_100CB75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB75C8);
  }

  return result;
}

uint64_t sub_1000814E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008152C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100081574(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000201F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000815B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LocationPreviewView()
{
  result = qword_100CB0450;
  if (!qword_100CB0450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008164C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10008169C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000816EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10008173C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10008178C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_100031D74();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1000817EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100081850()
{
  if (!qword_100CE26A0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE26A0);
    }
  }
}

void sub_1000818A0()
{
  sub_100081850();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100081930()
{
  if (!qword_100CB0470)
  {
    type metadata accessor for WeatherVFXConditionBackground();
    sub_1000619F4(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB0470);
    }
  }
}

void sub_1000819C4()
{
  if (!qword_100CB0480)
  {
    sub_10022E824(&qword_100CA4AB8);
    sub_100006F64(&qword_100CA4AC0, &qword_100CA4AB8);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB0480);
    }
  }
}

uint64_t sub_100081A68()
{
  v0 = type metadata accessor for LocationPreviewViewContentModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_100081AE0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NewsArticle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100081B54(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100081BC8()
{
  if (!qword_100CA6D20)
  {
    sub_10022E824(&qword_100CA6D28);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA6D20);
    }
  }
}

unint64_t sub_100081C3C()
{
  result = qword_100CA6D38;
  if (!qword_100CA6D38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CA6D38);
  }

  return result;
}

void sub_100081C98()
{
  if (!qword_100CA6D40)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA6D40);
    }
  }
}

void sub_100081D28()
{
  sub_1000622F0();
  if (v0 <= 0x3F)
  {
    sub_10080EDD8(319, &qword_100CC07D0, &qword_100CC07D8, &unk_100A84020, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_10080EDD8(319, &qword_100CDB8A8, &qword_100CAB930, &unk_100A3A7C0, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100082830();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100081E64()
{
  v0 = type metadata accessor for SunriseSunsetDetailInput.Input(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t type metadata accessor for SunriseSunsetDetailViewModel()
{
  result = qword_100CCD0E0;
  if (!qword_100CCD0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100081F08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10022E824(&qword_100CA71A0);
    sub_100004464();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100081F84()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TimeZone();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AttributedString();
      if (v2 <= 0x3F)
      {
        sub_10000D054();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SunriseSunsetDetailChartViewModel();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Location();
            if (v5 <= 0x3F)
            {
              type metadata accessor for SunEvents();
              if (v6 <= 0x3F)
              {
                type metadata accessor for OverviewTableViewModel();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for DaylightStringBuilder();
                  if (v8 <= 0x3F)
                  {
                    sub_100062550();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for DetailComponentContainerViewModel()
{
  result = qword_100CB89F0;
  if (!qword_100CB89F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082134()
{
  sub_1000625A8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailComponentViewModel();
    if (v1 <= 0x3F)
    {
      sub_1000627C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for DetailComponentViewModel()
{
  result = qword_100CD3248;
  if (!qword_100CD3248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008221C()
{
  sub_10000DB38();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for URL();
    if (v4 > 0x3F)
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

void sub_1000822DC()
{
  if (!qword_100CAE198)
  {
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CAE198);
    }
  }
}

void sub_100082368(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ConditionDetailMapViewModel()
{
  result = qword_100CDA580;
  if (!qword_100CDA580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100082408()
{
  result = type metadata accessor for ConditionDetailMapViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100082474()
{
  sub_100007760();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Location();
    if (v1 <= 0x3F)
    {
      sub_100082538();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WeatherMapOverlayKind();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100082538()
{
  if (!qword_100CB4360)
  {
    type metadata accessor for WeatherData(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB4360);
    }
  }
}

uint64_t sub_100082590()
{

  return sub_100066B44();
}

uint64_t sub_1000825A8()
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

uint64_t _s10PolarModelVMa()
{
  result = qword_100CCF980;
  if (!qword_100CCF980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082614()
{
  type metadata accessor for PolarType();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TimeZone();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AttributedString();
        if (v3 <= 0x3F)
        {
          sub_10000D054();
          if (v4 <= 0x3F)
          {
            type metadata accessor for SunriseSunsetDetailChartViewModel();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Location();
              if (v6 <= 0x3F)
              {
                type metadata accessor for DaylightStringBuilder();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for OverviewTableViewModel();
                  if (v8 <= 0x3F)
                  {
                    sub_100062550();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100082768(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10022E824(a3);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000827BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_10022E824(a3);
    v7 = sub_100031D74();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100082830()
{
  result = qword_100CDB8B0;
  if (!qword_100CDB8B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CDB8B0);
  }

  return result;
}

uint64_t sub_1000828E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_100082940()
{
  sub_1000829F4();
  if (v0 <= 0x3F)
  {
    sub_10000D474(319, &qword_100CAD3B0, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000829F4()
{
  if (!qword_100CB3B28)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB3B28);
    }
  }
}

void sub_100082A84()
{
  sub_10000D474(319, &qword_100CB3BF0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10000D474(319, &qword_100CAD3B0, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000829F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100082BA0()
{
  result = qword_100CB3C28;
  if (!qword_100CB3C28)
  {
    sub_10022E824(&qword_100CB3B58);
    sub_100006F64(&qword_100CB3C30, &qword_100CB3B68);
    sub_100006F64(&qword_100CB3C38, &qword_100CB3B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3C28);
  }

  return result;
}

uint64_t sub_100082CC8()
{
  type metadata accessor for PresentationWithoutInitialAnimation();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10022E824(&qword_100CBE348);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_100082E44();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_100082E44()
{
  result = qword_100CBE350;
  if (!qword_100CBE350)
  {
    sub_10022E824(&qword_100CBE348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBE350);
  }

  return result;
}

unint64_t sub_100082EE8()
{
  result = qword_100CCFB40;
  if (!qword_100CCFB40)
  {
    sub_10022E824(&qword_100CCFB18);
    sub_100082FA0();
    sub_100006F64(&qword_100CCFB78, &qword_100CCFB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFB40);
  }

  return result;
}

unint64_t sub_100082FA0()
{
  result = qword_100CCFB48;
  if (!qword_100CCFB48)
  {
    sub_10022E824(&qword_100CCFB10);
    sub_100083058();
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFB48);
  }

  return result;
}

unint64_t sub_100083058()
{
  result = qword_100CCFB50;
  if (!qword_100CCFB50)
  {
    sub_10022E824(&qword_100CCFB08);
    sub_100083110();
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFB50);
  }

  return result;
}

unint64_t sub_100083110()
{
  result = qword_100CCFB58;
  if (!qword_100CCFB58)
  {
    sub_10022E824(&qword_100CCFB00);
    sub_1000831C8();
    sub_100006F64(&qword_100CB0560, &qword_100CB0568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFB58);
  }

  return result;
}

unint64_t sub_1000831C8()
{
  result = qword_100CCFB60;
  if (!qword_100CCFB60)
  {
    sub_10022E824(&qword_100CCFAE8);
    sub_100006F64(&qword_100CCFB68, &qword_100CCFAF8);
    sub_100006F64(&qword_100CCFB70, &qword_100CCFAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFB60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapPresentationIntent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x100083380);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

double sub_100083418()
{
  sub_10089E720();
  EnvironmentValues.subscript.getter();
  return v1;
}

void sub_100083458()
{
  sub_10000FE4C();
  *v0 = sub_100083418();
  *(v0 + 8) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
}

double sub_1000834F0@<D0>(_OWORD *a1@<X8>)
{
  sub_1003ACB24();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_100083544@<D0>(_OWORD *a1@<X8>)
{
  if (qword_100CA1FC8 != -1)
  {
    swift_once();
  }

  v2 = unk_100CB28F8;
  *a1 = xmmword_100CB28E8;
  a1[1] = v2;
  result = *&xmmword_100CB2908;
  a1[2] = xmmword_100CB2908;
  return result;
}

double sub_1000835AC()
{
  xmmword_100CB28E8 = xmmword_100D8FC50;
  unk_100CB28F8 = unk_100D8FC60;
  result = *&xmmword_100D8FC70;
  xmmword_100CB2908 = xmmword_100D8FC70;
  return result;
}

uint64_t sub_1000835D0(__n128 *a1)
{
  sub_10001EA30(a1);
  sub_1003ACB24();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100083628(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = a2 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v3);

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *sub_1000836B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v29 = a6;
  v30 = a7;
  v14 = *a8;
  v15 = type metadata accessor for MainTracker();
  v34[3] = v15;
  v34[4] = &off_100C78C80;
  v34[0] = a3;
  v32 = v14;
  v33 = &off_100C55440;
  v31[0] = a8;
  type metadata accessor for MainInteractor();
  v16 = swift_allocObject();
  v17 = sub_10002D7F8(v34, v15);
  __chkstk_darwin(v17);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_10002D7F8(v31, v32);
  __chkstk_darwin(v21);
  v23 = (&v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v19;
  v26 = *v23;
  v16[11] = v15;
  v16[12] = &off_100C78C80;
  v16[8] = v25;
  v16[16] = v14;
  v16[17] = &off_100C55440;
  v16[13] = v26;
  v16[6] = a1;
  v16[7] = a2;
  v16[2] = a4;
  v16[3] = a5;
  v27 = v30;
  v16[4] = v29;
  v16[5] = v27;
  sub_100006F14(v31);
  sub_100006F14(v34);
  return v16;
}

void sub_100083B88()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90478 = sub_100004594();
  sub_1000212EC();
}

void sub_100083CDC()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90488 = sub_100004594();
  sub_1000212EC();
}

uint64_t sub_100083E30()
{
  v1 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___observableResolver;
  if (*(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___observableResolver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___observableResolver);
  }

  else
  {
    v3 = v0;
    sub_1000359CC(v5);
    type metadata accessor for ObservableResolver();
    swift_allocObject();
    v2 = ObservableResolver.init(_:)();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100083ED0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009D0D4();
  *a1 = result & 1;
  a1[1] = BYTE1(result) & 1;
  a1[2] = BYTE2(result) & 1;
  a1[3] = BYTE3(result) & 1;
  return result;
}

void sub_100084020()
{
  sub_10000C778();
  v1 = v0;
  v231 = v2;
  v230 = sub_10022C350(&qword_100CB3688);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003848();
  v229 = v4;
  __chkstk_darwin(v5);
  v228 = &v179 - v6;
  v226 = sub_10022C350(&qword_100CDCD58);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v227 = v8;
  v9 = sub_1000038CC();
  v10 = type metadata accessor for MainView(v9);
  sub_1000037C4();
  v236 = v11;
  __chkstk_darwin(v12);
  v237 = v13;
  v238 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000038CC();
  type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v224 = v15;
  v225 = v14;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v223 = v17 - v16;
  sub_10022C350(&unk_100CE0EB0);
  sub_1000037C4();
  v232 = v19;
  v233 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v214 = v21;
  sub_1000038CC();
  v199 = type metadata accessor for VibrantDividerStyle();
  sub_1000037C4();
  v197 = v22;
  __chkstk_darwin(v23);
  sub_1000037D8();
  v194 = v25 - v24;
  sub_1000038CC();
  v26 = type metadata accessor for UserInterfaceSizeClass();
  sub_1000037C4();
  v183 = v27;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v180 = v30 - v29;
  v31 = sub_10022C350(&qword_100CA64E8) - 8;
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &v179 - v33;
  v35 = sub_10022C350(&qword_100CA6028);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  v181 = v37;
  __chkstk_darwin(v38);
  v40 = &v179 - v39;
  __chkstk_darwin(v41);
  v43 = &v179 - v42;
  v185 = sub_10022C350(&qword_100CE0EC0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  v184 = v45;
  v190 = sub_10022C350(&qword_100CE0EC8);
  sub_1000037C4();
  v187 = v46;
  sub_100003828();
  __chkstk_darwin(v47);
  sub_1000039BC();
  v186 = v48;
  v198 = sub_10022C350(&qword_100CE0ED0);
  sub_1000037C4();
  v196 = v49;
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  v195 = v51;
  sub_10022C350(&qword_100CE0ED8);
  sub_1000037C4();
  v191 = v53;
  v192 = v52;
  sub_100003828();
  __chkstk_darwin(v54);
  sub_1000039BC();
  v189 = v55;
  v188 = sub_10022C350(&qword_100CE0EE0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v56);
  sub_1000039BC();
  v193 = v57;
  v234 = sub_10022C350(&qword_100CE0EE8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v58);
  sub_1000039BC();
  v200 = v59;
  v210 = sub_10022C350(&qword_100CE0EF0);
  sub_1000037C4();
  v207 = v60;
  sub_100003828();
  __chkstk_darwin(v61);
  sub_1000039BC();
  v204 = v62;
  v211 = sub_10022C350(&qword_100CE0EF8);
  sub_1000037C4();
  v208 = v63;
  sub_100003828();
  __chkstk_darwin(v64);
  sub_1000039BC();
  v205 = v65;
  v203 = sub_10022C350(&qword_100CE0F00);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v66);
  sub_1000039BC();
  v209 = v67;
  v201 = sub_10022C350(&qword_100CE0F08);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v68);
  sub_1000039BC();
  v212 = v69;
  v202 = sub_10022C350(&qword_100CE0F10);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v70);
  sub_1000039BC();
  v213 = v71;
  v206 = sub_10022C350(&qword_100CE0F18);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v72);
  sub_1000039BC();
  v215 = v73;
  v217 = sub_10022C350(&qword_100CE0F20);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v74);
  sub_1000039BC();
  v218 = v75;
  sub_10022C350(&qword_100CE0F28);
  sub_1000037C4();
  v221 = v77;
  v222 = v76;
  sub_100003828();
  __chkstk_darwin(v78);
  sub_1000039BC();
  v220 = v79;
  v216 = sub_10022C350(&unk_100CE0F30);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v80);
  sub_1000039BC();
  v219 = v81;
  *&v243[0] = static Alignment.center.getter();
  *(&v243[0] + 1) = v82;
  sub_1000857D4(v0, &v243[1]);
  KeyPath = swift_getKeyPath();
  v235 = v10;
  v84 = Namespace.wrappedValue.getter();
  *(&v243[7] + 1) = KeyPath;
  *&v243[8] = v84;
  BYTE8(v243[8]) = 0;
  sub_100035B30((v1 + 1), v244);
  v182 = Namespace.wrappedValue.getter();
  v239 = v1;
  v85 = v183;
  sub_100889B04();
  (*(v85 + 104))(v40, enum case for UserInterfaceSizeClass.regular(_:), v26);
  sub_10001B350(v40, 0, 1, v26);
  v86 = *(v31 + 56);
  sub_1000302D8(v43, v34, &qword_100CA6028);
  sub_1000302D8(v40, &v34[v86], &qword_100CA6028);
  sub_100003BDC(v34);
  if (!v89)
  {
    v179 = v43;
    v88 = v181;
    sub_1000302D8(v34, v181, &qword_100CA6028);
    sub_100003BDC(&v34[v86]);
    if (!v89)
    {
      v90 = &v34[v86];
      v91 = v180;
      (*(v85 + 32))(v180, v90, v26);
      sub_100061520(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v87 = dispatch thunk of static Equatable.== infix(_:_:)();
      v92 = *(v85 + 8);
      v92(v91, v26);
      v86 = &unk_100A40610;
      sub_1000180EC(v40, &qword_100CA6028);
      sub_1000180EC(v179, &qword_100CA6028);
      v92(v88, v26);
      sub_1000180EC(v34, &qword_100CA6028);
      goto LABEL_10;
    }

    v86 = &unk_100A40610;
    sub_1000180EC(v40, &qword_100CA6028);
    sub_1000180EC(v179, &qword_100CA6028);
    (*(v85 + 8))(v88, v26);
LABEL_9:
    sub_1000180EC(v34, &qword_100CA64E8);
    v87 = 0;
    goto LABEL_10;
  }

  sub_1000180EC(v40, &qword_100CA6028);
  sub_1000180EC(v43, &qword_100CA6028);
  sub_100003BDC(&v34[v86]);
  if (!v89)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v34, &qword_100CA6028);
  v87 = 1;
LABEL_10:
  sub_100013188(v244, v240);
  *(&v241 + 1) = v182;
  v242 = v87 & 1;
  memcpy(v244, v243, 0x89uLL);
  v244[9] = v240[0];
  v244[10] = v240[1];
  v244[11] = v241;
  LOBYTE(v244[12]) = v87 & 1;
  v93 = v239;
  v94 = *v239;
  v96 = v184;
  v95 = v185;
  v97 = &v184[*(v185 + 36)];
  sub_100035B30((v239 + 1), (v97 + 2));
  v98 = *(v93 + *(v235 + 60));
  swift_getKeyPath();
  v99 = sub_100011748();
  *(v97 + *(type metadata accessor for MainViewSheetViewModifier(v99) + 28)) = v86;
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v183 = v94;
  swift_retain_n();

  v182 = sub_10022C350(&unk_100CE0F40);
  v181 = sub_10006768C(&qword_100CA4CD0, &unk_100CE0F40);
  sub_100020B28();
  *v97 = ObservedObject.init(wrappedValue:)();
  v97[1] = v100;
  v97[7] = v98;
  memcpy(v96, v244, 0xC1uLL);
  v101 = v194;
  static DividerStyle<>.vibrant.getter();
  v102 = sub_10088D334();
  v103 = sub_100061520(&qword_100CE0FA8, &type metadata accessor for VibrantDividerStyle);
  v104 = v186;
  v105 = v199;
  View.dividerStyle<A>(_:)();
  (*(v197 + 8))(v101, v105);
  sub_1000180EC(v96, &qword_100CE0EC0);
  Solarium.init()();
  v106 = sub_10022C350(&qword_100CE0FB0);
  *&v244[0] = v95;
  *(&v244[0] + 1) = v105;
  *&v244[1] = v102;
  *(&v244[1] + 1) = v103;
  v107 = sub_10000CFA0();
  v108 = sub_10088D3F0();
  v109 = v195;
  v110 = v190;
  View.staticIf<A, B>(_:then:)();
  (*(v187 + 8))(v104, v110);
  Solarium.init()();
  v111 = v214;
  v112 = static ViewInputPredicate.! prefix(_:)();
  v199 = &v179;
  __chkstk_darwin(v112);
  v197 = sub_10022C350(&qword_100CE0FD0);
  *&v244[0] = v110;
  *(&v244[0] + 1) = &type metadata for Solarium;
  *&v244[1] = v106;
  *(&v244[1] + 1) = v107;
  *&v244[2] = &protocol witness table for Solarium;
  *(&v244[2] + 1) = v108;
  sub_10000CFA0();
  *&v244[0] = &type metadata for Solarium;
  *(&v244[0] + 1) = &protocol witness table for Solarium;
  sub_10000CFA0();
  sub_10088D53C();
  v113 = v189;
  v114 = v198;
  v115 = v233;
  View.staticIf<A, B>(_:then:)();
  (*(v232 + 1))(v111, v115);
  (*(v196 + 8))(v109, v114);
  v116 = v193;
  (*(v191 + 32))(v193, v113, v192);
  *(v116 + *(v188 + 36)) = 1;
  v117 = v200;
  v118 = v200 + *(v234 + 36);
  v119 = v239;
  sub_100035B30((v239 + 6), v118);
  v120 = *(type metadata accessor for MainViewScenePhaseObservationViewModifier(0) + 20);
  *(v118 + v120) = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000);
  swift_storeEnumTagMultiPayload();
  v121 = sub_100020B28();
  sub_10011C0F0(v121, v122, v123);
  v124 = v223;
  sub_1008897F4();
  v125 = v238;
  v232 = type metadata accessor for MainView;
  sub_100085E60(v119, v238, type metadata accessor for MainView);
  v236 = *(v236 + 80);
  v126 = (v236 + 16) & ~v236;
  v127 = swift_allocObject();
  sub_100085EBC(v125, v127 + v126, type metadata accessor for MainView);
  v214 = sub_100890D20();
  v128 = sub_100061520(&qword_100CE1038, &type metadata accessor for ContentSizeCategory);
  v129 = v204;
  v130 = v225;
  View.onChange<A>(of:initial:_:)();

  (*(v224 + 8))(v124, v130);
  sub_1000180EC(v117, &qword_100CE0EE8);
  v131 = v227;
  v132 = v239;
  sub_10088998C();
  v133 = v132;
  v134 = v238;
  v135 = v232;
  sub_100085E60(v133, v238, v232);
  v233 = v126;
  v136 = swift_allocObject();
  sub_100085EBC(v134, v136 + v126, v135);
  *&v244[0] = v234;
  *(&v244[0] + 1) = v130;
  *&v244[1] = v214;
  *(&v244[1] + 1) = v128;
  sub_100008CC8();
  swift_getOpaqueTypeConformance2();
  sub_100081338();
  v137 = v210;
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v131, &qword_100CDCD58);
  (*(v207 + 8))(v129, v137);
  v138 = v238;
  v139 = v239;
  v140 = v232;
  sub_100085E60(v239, v238, v232);
  v141 = v233;
  v142 = swift_allocObject();
  sub_100085EBC(v138, v142 + v141, v140);
  v143 = v209;
  v144 = sub_100025214();
  v145(v144);
  v146 = (v143 + *(v203 + 36));
  *v146 = sub_100891080;
  v146[1] = v142;
  v146[2] = 0;
  v146[3] = 0;
  v147 = swift_getKeyPath();
  v148 = v212;
  v149 = (v212 + *(v201 + 36));
  sub_10022C350(&qword_100CE1050);
  v150 = v139;
  sub_100889B04();
  *v149 = v147;
  sub_10011C0F0(v143, v148, &qword_100CE0F00);
  v151 = type metadata accessor for ColorScheme();
  v152 = v228;
  sub_10001B350(v228, 1, 1, v151);
  sub_1000302D8(v152, v229, &qword_100CB3688);
  v153 = v213;
  State.init(wrappedValue:)();
  sub_1000180EC(v152, &qword_100CB3688);
  sub_10011C0F0(v148, v153, &qword_100CE0F08);
  v154 = v215;
  v155 = v215 + *(v206 + 36);
  sub_100889B04();
  v156 = (v155 + *(sub_10022C350(&qword_100CE1058) + 36));
  *v156 = sub_10051D4BC;
  v156[1] = 0;
  sub_10011C0F0(v153, v154, &qword_100CE0F10);
  v157 = v218;
  v158 = v218 + *(v217 + 36);
  sub_100035B30(v150 + 88, v158);
  v159 = type metadata accessor for MonitorAppLaunchStateViewModifier(0);
  v160 = *(v159 + 20);
  *(v158 + v160) = swift_getKeyPath();
  sub_10022C350(&qword_100CE1060);
  swift_storeEnumTagMultiPayload();
  v161 = (v158 + *(v159 + 24));
  type metadata accessor for ExtendedAppLaunchState(0);
  v162 = swift_allocObject();
  *(v162 + 16) = 1;
  ObservationRegistrar.init()();
  *&v243[0] = v162;
  State.init(wrappedValue:)();
  v163 = *(&v244[0] + 1);
  *v161 = *&v244[0];
  v161[1] = v163;
  sub_10011C0F0(v154, v157, &qword_100CE0F18);
  v164 = (v150 + *(v235 + 56));
  v165 = *v164;
  v166 = v164[1];
  v167 = v164[2];
  *&v244[0] = v165;
  *(&v244[0] + 1) = v166;
  *&v244[1] = v167;
  sub_10022C350(&qword_100CE1068);
  State.wrappedValue.getter();
  v244[0] = v243[0];
  sub_10089116C();
  sub_10002D5A4();
  v168 = v220;
  View.navigationTitle<A>(_:)();

  sub_1000180EC(v157, &qword_100CE0F20);
  v169 = v238;
  sub_100085E60(v150, v238, v140);
  v170 = v233;
  v171 = swift_allocObject();
  sub_100085EBC(v169, v171 + v170, v140);
  v172 = v219;
  (*(v221 + 32))(v219, v168, v222);
  v173 = (v172 + *(v216 + 36));
  *v173 = sub_1008915C8;
  v173[1] = v171;
  v174 = ObservedObject.init(wrappedValue:)();
  v176 = v175;
  v177 = v231;
  sub_10011C0F0(v172, v231, &unk_100CE0F30);
  v178 = (v177 + *(sub_10022C350(&unk_100CE10C0) + 36));
  *v178 = v174;
  v178[1] = v176;
  sub_10000536C();
}

uint64_t sub_1000856EC()
{
  sub_10000FE4C();
  result = sub_1000A48C0();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1000857D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA64E8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  v35 = a1;
  sub_100889B04();
  (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.regular(_:), v3);
  sub_10001B350(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_1000302D8(v18, v9, &qword_100CA6028);
  sub_1000302D8(v15, &v9[v19], &qword_100CA6028);
  if (sub_100024D10(v9, 1, v3) != 1)
  {
    sub_1000302D8(v9, v12, &qword_100CA6028);
    if (sub_100024D10(&v9[v19], 1, v3) != 1)
    {
      v26 = v34;
      (*(v4 + 32))(v34, &v9[v19], v3);
      sub_100061520(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v4 + 8);
      v28(v26, v3);
      sub_1000180EC(v15, &qword_100CA6028);
      sub_1000180EC(v18, &qword_100CA6028);
      v28(v12, v3);
      sub_1000180EC(v9, &qword_100CA6028);
      if (v27)
      {
        goto LABEL_9;
      }

LABEL_7:
      v20 = v35;
      v21 = type metadata accessor for MainView(0);

      v22 = Namespace.wrappedValue.getter();
      v23 = *(v20 + *(v21 + 60));
      sub_100035B30((v20 + 1), &v40);

      sub_10022C350(&unk_100CE0F40);
      sub_10006768C(&qword_100CA4CD0, &unk_100CE0F40);
      v37 = ObservedObject.init(wrappedValue:)();
      v38 = v24;
      v39[0] = v22;
      v39[1] = v23;
      sub_100085DC0(&v37, v42);
      v43 = 1;
      sub_100085DF8();
      sub_10009D188();
      _ConditionalContent<>.init(storage:)();
      return sub_10009EC98(&v37);
    }

    sub_1000180EC(v15, &qword_100CA6028);
    sub_1000180EC(v18, &qword_100CA6028);
    (*(v4 + 8))(v12, v3);
LABEL_6:
    sub_1000180EC(v9, &qword_100CA64E8);
    goto LABEL_7;
  }

  sub_1000180EC(v15, &qword_100CA6028);
  sub_1000180EC(v18, &qword_100CA6028);
  if (sub_100024D10(&v9[v19], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1000180EC(v9, &qword_100CA6028);
LABEL_9:
  v29 = v35;
  v30 = *v35;
  v31 = type metadata accessor for MainView(0);

  v32 = Namespace.wrappedValue.getter();
  sub_100035B30((v29 + 1), v39);
  sub_100035B30(v29 + *(v31 + 64), &v41);
  v37 = v30;
  v38 = v32;
  sub_100891688(&v37, v42);
  v43 = 0;
  sub_100085DF8();
  sub_10009D188();
  _ConditionalContent<>.init(storage:)();
  return sub_1008916C0(&v37);
}

unint64_t sub_100085DF8()
{
  result = qword_100CE10E8;
  if (!qword_100CE10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE10E8);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TranslationAndGradientBackgroundViewModifier.ScrollAdjustments(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100085E60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100085EBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100085F18@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DiagnosticsConsentProvider();

  return sub_100085F88(a1);
}

uint64_t sub_100085F88@<X0>(uint64_t a1@<X8>)
{
  static Settings.WeatherAnalytics.Debugging.overrides.getter();
  v2 = dispatch thunk of SettingGroup.isEnabled.getter();

  if ((v2 & 1) == 0)
  {
    return DiagnosticsConsentProvider.status.getter();
  }

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.WeatherAnalytics.Debugging.Overrides();
  static Settings.WeatherAnalytics.Debugging.Overrides.dnuConsent.getter();
  SettingReader.read<A>(_:)();

  v3 = type metadata accessor for DiagnosticsConsentStatus();
  if (v6 == 1)
  {
    v4 = &enum case for DiagnosticsConsentStatus.allowed(_:);
  }

  else
  {
    v4 = &enum case for DiagnosticsConsentStatus.disallowed(_:);
  }

  return (*(*(v3 - 8) + 104))(a1, *v4, v3);
}

uint64_t sub_100086288(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000862E8()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100086340(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000863A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1000863F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100086450(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1000864EC()
{

  return sub_100A162A0(2, 26, 0, 0);
}

uint64_t sub_100086558()
{

  return swift_allocObject();
}

uint64_t sub_10008658C()
{
  result = v0;
  *(v2 - 192) = v1;
  return result;
}

uint64_t sub_1000865BC(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

void sub_1000865DC()
{

  Hasher._combine(_:)(0);
}

uint64_t sub_10008661C()
{

  return swift_beginAccess();
}

uint64_t sub_10008669C()
{

  return sub_10018EC2C(v0, type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
}

uint64_t sub_1000866D8()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t sub_1000867B8()
{
  result = v0;
  *(v2 - 240) = v1;
  return result;
}

BOOL sub_1000867CC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000867F4()
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t sub_10008682C()
{
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008684C()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100086998()
{

  return sub_10003BCD8();
}

uint64_t sub_1000869B4()
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_1000869D4()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for TimeState();
  sub_100003AE8(v6);
  v8 = (v5 + *(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v11);
  v14 = (v8 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  return sub_10007B240(v0 + v3, *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), v0 + v8, (v0 + v14), *(v0 + v14 + *(v13 + 64)), *(v0 + v14 + *(v13 + 64) + 1), *(v0 + ((v14 + *(v13 + 64) + 9) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100086B50@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CE2958);
  result = a1(&a2[*(v4 + 48)]);
  *a2 = result & 1;
  return result;
}

void *sub_100086BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100031B34();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

id sub_100086BF4(char a1)
{
  v2 = 520;
  if (a1)
  {
    v2 = 528;
  }

  return *(v1 + v2);
}

void sub_100086C14()
{
  v0 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v0);
  v1 = type metadata accessor for Location();
  sub_100003810(v1);
  sub_100040C54();
  sub_100086CCC();
}

void sub_100086CCC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    static os_signpost_type_t.begin.getter();
    v2 = *(v1 + 448);
    sub_10022C350(&qword_100CA40C8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100A2C3F0;
    v4 = v2;
    v5 = Location.name.getter();
    v7 = v6;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100035744();
    *(v3 + 32) = v5;
    *(v3 + 40) = v7;
    sub_100037E14();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
  }

  else
  {
    v8 = sub_100192454();
    sub_1005B3D94(v8, v9);
  }
}

uint64_t sub_100086E40(uint64_t a1)
{
  sub_1000161C0((a1 + 80), *(a1 + 104));
  sub_1000201F8();
  dispatch thunk of LocationMetadataManagerType.resolveCountryCode(for:)();
  v1 = Promise.asOptional()();

  return v1;
}

uint64_t sub_100086EAC()
{
  sub_1000C87D0();
  v17 = type metadata accessor for Location();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_100171244();
  v5 = type metadata accessor for TimeState();
  sub_100003AE8(v5);
  v7 = (v1 + *(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v12 = v11;
  v13 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);

  (*(v3 + 8))(v0 + v4, v17);

  type metadata accessor for Date();
  sub_100003D98();
  (*(v14 + 8))(v0 + v7);
  (*(v12 + 8))(v0 + v13, v10);

  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_1000870B0()
{

  return swift_beginAccess();
}

uint64_t sub_100087104()
{

  return type metadata accessor for MainState._Storage(0);
}

uint64_t sub_100087140()
{

  return sub_100051BBC();
}

uint64_t sub_100087188()
{
}

uint64_t sub_1000871D8()
{
}

uint64_t sub_100087254()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_10008726C()
{

  return type metadata accessor for WeatherDataModel();
}

uint64_t sub_100087294()
{

  return sub_100073198();
}

uint64_t sub_1000872DC()
{
  sub_100006F14(v1 + *(v0 + 56));
}

uint64_t sub_100087314()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000926F8;

  return sub_10004E134();
}

void sub_1000873CC()
{
  sub_10000C778();
  v20 = v1;
  v21 = v2;
  v19 = v3;
  v5 = v4;
  v17 = v6;
  v8 = v7(0);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  v22 = v0 + 64;
  v18 = v0;
  v14 = ~(-1 << *(v0 + 32));
  for (i = v5 & v14; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v18 + 48) + *(v10 + 72) * i, v8);
    sub_10005B6CC(v19, v20);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  sub_10000536C();
}

uint64_t sub_100087544()
{
  v1 = sub_100017580();
  v2(v1);
  sub_100003D98();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100087594()
{
  v0 = type metadata accessor for Location.Identifier();
  __chkstk_darwin(v0 - 8);
  Location.identifier.getter();
  swift_beginAccess();
  sub_10007D7F4();
  v2 = v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_10008765C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for CurrentWeather();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v37 - v12;
  v13 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  v19 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v24 = (&v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v24 = a1;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v24);
  sub_100087544();
  v25 = Location.id.getter();
  sub_1000864C0(v25, v26, a5);

  v27 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v15, 1, v27) == 1)
  {
    sub_100018144(v15, &qword_100CA37B0);
    sub_10001B350(v18, 1, 1, v19);
  }

  else
  {
    sub_1001A0D3C();
    sub_100087544();
    if (sub_100024D10(v18, 1, v19) != 1)
    {
      sub_100086450(v18, v21);
      if (WeatherDataModel.isExpired.getter())
      {
        if ((*(v44 + 320) & 1) == 0)
        {
          v30 = v37;
          static WeatherClock.date.getter();
          v31 = v39;
          WeatherDataModel.currentWeather.getter();
          v32 = v38;
          CurrentWeather.date.getter();
          (*(v42 + 8))(v31, v43);
          Date.timeIntervalSince(_:)();
          v34 = v33;
          v35 = v41;
          v36 = *(v40 + 8);
          v36(v32, v41);
          v36(v30, v35);
          v28 = v34 >= a1;
          *v24 = v28;
          v24[1] = v34;
          swift_storeEnumTagMultiPayload();
          sub_10005C1D4(v24);
          sub_100087544();
          sub_100087544();
          return v28;
        }
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_10005C1D4(v24);
        sub_100087544();
      }

      sub_100087544();
      return 0;
    }
  }

  sub_100018144(v18, &qword_100CA3898);
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v24);
  sub_100087544();
  return 1;
}

id sub_100087BC8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v17[4] = a3;
  v17[5] = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10030DC80;
  v17[3] = &unk_100C521E8;
  v13 = _Block_copy(v17);
  v14 = [v6 initWithFireDate:isa interval:a2 & 1 repeats:v13 block:a5];
  _Block_release(v13);

  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(a1, v15);

  return v14;
}

unint64_t sub_100087CF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100087D40()
{

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100087DA4()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100087DCC()
{
  result = v0;
  *(v2 - 128) = v1;
  return result;
}

uint64_t sub_100087E24()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100087E64()
{

  return type metadata accessor for LocationsState();
}

uint64_t sub_100087E84()
{

  return ObservableResolver.resolve<A>(_:)();
}

uint64_t sub_100087EBC@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_1002AB08C(v4, v2, a1);
}

uint64_t sub_100087F08()
{

  return sub_10018EC2C(v0, type metadata accessor for UnitsConfigurationViewModel.Temperature);
}

uint64_t sub_100087F30(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  sub_100003810(v2);
  return sub_100086E40(a1);
}

uint64_t sub_100087FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100024D10(a1, a2, a3);
}

unint64_t sub_100088014(uint64_t a1)
{

  return sub_10077C574(a1);
}

uint64_t sub_10008803C()
{

  return sub_1000730E8();
}

uint64_t sub_100088054()
{
  type metadata accessor for Location();
  sub_10000548C();

  v0 = sub_1000751C4();
  v1(v0);
  sub_100036F2C();

  return swift_deallocObject();
}

uint64_t sub_100088104(uint64_t *a1)
{
  v4 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = type metadata accessor for Location();
  sub_100003AE8(v9);
  v11 = (v6 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  sub_100171244();
  v12 = type metadata accessor for WeatherServiceLocationOptions();
  sub_100003AE8(v12);
  v14 = (v2 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  v17 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v17);
  v19 = (v14 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  sub_1000326E4();
  v20 = type metadata accessor for TimeState();
  sub_100003AE8(v20);
  sub_1000FFCA0();
  return sub_1000604AC(a1, v21, v1 + v6, v1 + v11, v22, v1 + v14, v1 + v19, v23, v28, v29, v27, v24, v25, v26);
}

uint64_t sub_1000883D4()
{

  return sub_1000AF41C();
}

uint64_t sub_100088400(__n128 a1)
{
  a1.n128_u64[0] = 1.0;

  return Debouncer.init(interval:queue:)(v1, a1);
}

uint64_t sub_100088420()
{
}

void sub_10008843C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  Hasher._combine(_:)(v3);
}

uint64_t sub_10008845C(uint64_t a1, unint64_t *a2)
{

  return sub_10000C70C(0, a2);
}

uint64_t sub_100088480()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000884D4()
{

  return sub_100051BBC();
}

uint64_t sub_100088510(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 - 352);

  return sub_100018144(v4, a2);
}

uint64_t sub_100088528(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10008853C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1000885AC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000885F8(uint64_t *a1)
{
  sub_10022C350(a1);
  swift_arrayDestroy();
  sub_100018584();

  return swift_deallocClassInstance();
}

uint64_t sub_100088640(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1000161C0(a1, v5);
  return (*(v6 + 8))(a2, a3, v5, v6);
}

char *sub_10008870C@<X0>(uint64_t a1@<X8>)
{
  *v3 = v1;
  v3[1] = a1;
  return v3 + *(*(v2 + 1912) + 20);
}

uint64_t sub_100088728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 2288);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_100088740()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1000887A4()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1000887C0()
{

  return type metadata accessor for WeatherData.WeatherStatisticsState(0);
}

uint64_t sub_1000887E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_100035AD0(a1, v4, a2);
}

uint64_t sub_1000887FC()
{

  return swift_beginAccess();
}

uint64_t sub_100088818()
{
  *(v1 - 112) = v0;

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_10008884C()
{

  return sub_100072EC8();
}

uint64_t sub_100088870()
{
  result = v0;
  *(v2 - 128) = v1;
  return result;
}

uint64_t sub_10008889C()
{

  return sub_100620EDC();
}

uint64_t sub_1000888B4()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_100088944()
{

  sub_100006F14(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100088984()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_1000037C4();
  type metadata accessor for Date();
  sub_1000037C4();
  swift_unknownObjectRelease();

  v0 = sub_1000134A0();
  v1(v0);
  v2 = sub_10001626C();
  v3(v2);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_100088AA4()
{

  return swift_deallocObject();
}

uint64_t sub_100088AE4()
{
  v1 = type metadata accessor for SearchResultsList(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v0 + v2, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  sub_100006F14(v3 + *(v1 + 20));
  v5 = v3 + *(v1 + 24);

  v6 = v5 + *(type metadata accessor for SearchResultsViewModel(0) + 32);
  type metadata accessor for SelectedSearchResult();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for LocationOfInterest();
    sub_1000037E8();
    (*(v8 + 8))(v6);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100088CB8(void (*a1)(void))
{
  a1(0);
  sub_1000037E8();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_100088D40()
{
  v1 = sub_10022C350(&unk_100CB2CF0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 73) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for Date();
  if (!sub_100024D10(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100088E5C()
{
  type metadata accessor for ReportWeatherView();
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v6 + 8))(v3 + v5);
  }

  sub_10001673C(v0[5]);

  sub_100006F14(v3 + v0[6]);
  sub_10001673C(v0[7]);

  sub_10001673C(v0[8]);

  return swift_deallocObject();
}

uint64_t sub_100088FB0()
{
  v1 = type metadata accessor for CalendarView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1000E4DF8(*v2, *(v2 + 8));
  v3 = v2 + v1[5];
  type metadata accessor for TimeZone();
  sub_1000037E8();
  (*(v4 + 8))(v3);
  v5 = type metadata accessor for CalendarViewModel(0);
  v6 = v5[5];
  v7 = type metadata accessor for Date();
  sub_1000037E8();
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v10 = sub_10001BC7C(v5[6]);
  (v9)(v10);
  v11 = sub_10001BC7C(v5[7]);
  (v9)(v11);
  v12 = v5[8];
  if (!sub_100024D10(v3 + v12, 1, v7))
  {
    v9(v3 + v12, v7);
  }

  v13 = v5[10];
  type metadata accessor for MoonPhase.Hemisphere();
  sub_1000037E8();
  (*(v14 + 8))(v3 + v13);
  v15 = v2 + v1[6];
  sub_10022C350(&qword_100CA72A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Locale();
    sub_1000037E8();
    (*(v16 + 8))(v15);
  }

  else
  {
  }

  v17 = _s13CalendarStateVMa();
  v18 = sub_10001BC7C(v17[5]);
  (v9)(v18);
  v19 = v17[6];
  type metadata accessor for Calendar();
  sub_1000037E8();
  (*(v20 + 8))(v15 + v19);
  v21 = sub_10001BC7C(v17[7]);
  (v9)(v21);
  v22 = sub_10001BC7C(v17[8]);
  (v9)(v22);

  v23 = sub_10001BC7C(v17[10]);
  (v9)(v23);
  sub_100006F14(v2 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_1000892A4()
{
  type metadata accessor for DebugLocationIntelligenceView();
  sub_100003A0C();
  v2 = sub_100003D30();
  if (!sub_100074770(v2))
  {
    sub_100003D20();
    (*(v3 + 8))(v1, v0);
  }

  sub_10022C350(&qword_100CABAD0);

  if (!sub_100014274())
  {
    sub_100003D20();
    v4 = sub_10001920C();
    v5(v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000893D8()
{
  v1 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  sub_100003DDC();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v5 = v3 + *(v4 + 20);

  v6 = v5 + *(sub_10022C350(&qword_100CABD18) + 32);
  v7 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  if (!sub_100024D10(v6, 1, v7))
  {
    type metadata accessor for Date();
    sub_100003D98();
    (*(v8 + 8))(v6);
    sub_100003DAC();
    sub_100003DAC();
    v9 = v7[7];
    type metadata accessor for TimeZone();
    sub_100003D98();
    (*(v10 + 8))(v6 + v9);
    v11 = v7[8];
    v12 = sub_10022C350(&qword_100CA53F8);
    sub_1000037E8();
    v14 = *(v13 + 8);
    v14(v6 + v11, v12);
    v14(v6 + v7[9], v12);
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
    v15 = v7[15];
    v16 = type metadata accessor for Precipitation();
    if (!sub_100024D10(v6 + v15, 1, v16))
    {
      sub_100003B20();
      (*(v17 + 8))(v6 + v15, v16);
    }

    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
  }

  v18 = v3 + *(v1 + 24);
  type metadata accessor for Date();
  sub_100003D98();
  (*(v19 + 8))(v18);
  sub_100014298();
  sub_100014298();
  v20 = v7[7];
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v21 + 8))(v18 + v20);
  v22 = v7[8];
  v23 = sub_10022C350(&qword_100CA53F8);
  sub_1000037E8();
  v25 = *(v24 + 8);
  v25(v18 + v22, v23);
  v25(v18 + v7[9], v23);
  sub_100014298();
  sub_100014298();
  sub_100014298();
  v26 = v7[15];
  v27 = type metadata accessor for Precipitation();
  if (!sub_100024D10(v18 + v26, 1, v27))
  {
    sub_100003B20();
    (*(v28 + 8))(v18 + v26, v27);
  }

  sub_100014298();
  sub_100014298();
  sub_100014298();

  return swift_deallocObject();
}

uint64_t sub_1000897A4()
{
  v1 = type metadata accessor for ConditionDetailChartDataInput(0);
  sub_100003DDC();
  v3 = *(v2 + 80);
  v26 = *(v4 + 64);
  v27 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v0 + ((v3 + 16) & ~v3);
  v9 = type metadata accessor for Date();
  sub_1000037E8();
  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = sub_10011C13C(v1[5]);
  (v11)(v12);
  v13 = v1[6];
  type metadata accessor for DetailChartCondition();
  sub_1000037E8();
  (*(v14 + 8))(v8 + v13);
  v15 = sub_10011C13C(v1[7]);
  (v11)(v15);
  v16 = sub_10011C13C(v1[8]);
  (v11)(v16);
  v17 = v1[10];
  type metadata accessor for TimeZone();
  sub_1000037E8();
  (*(v18 + 8))(v8 + v17);

  v19 = v1[12];
  type metadata accessor for CurrentWeather();
  sub_1000037E8();
  (*(v20 + 8))(v8 + v19);
  v21 = v1[13];
  v22 = type metadata accessor for DayWeather();
  if (!sub_100024D10(v8 + v21, 1, v22))
  {
    (*(*(v22 - 8) + 8))(v8 + v21, v22);
  }

  v23 = v1[14];
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_1000037E8();
  (*(v24 + 8))(v8 + v23);
  (*(v6 + 8))(v0 + ((((v3 + 16) & ~v3) + v26 + v7) & ~v7), v27);

  return swift_deallocObject();
}

uint64_t sub_100089A78()
{
  v1 = (type metadata accessor for CompactGradientView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  v4 = type metadata accessor for AnimatedGradient();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_10022C350(&qword_100CACB08);

  return swift_deallocObject();
}

uint64_t sub_100089B84()
{
  type metadata accessor for DebugWeatherCacheTestingView();
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  type metadata accessor for Date();
  sub_1000037E8();
  v5 = *(v4 + 8);
  v6 = sub_10000C918();
  v5(v6);
  sub_10022C350(&qword_100CAD050);
  sub_10002FE10();
  v7 = sub_10000C918();
  v5(v7);

  v8 = sub_10022C350(&qword_100CA7000);
  if (!sub_100020660(v8))
  {
    sub_100003B20();
    v9 = sub_10000C918();
    v10(v9);
  }

  sub_10022C350(&qword_100CAD058);
  sub_10002FE10();
  v11 = sub_10022C350(&qword_100CA7030);
  if (!sub_100020660(v11))
  {
    sub_100003B20();
    v12 = sub_10000C918();
    v13(v12);
  }

  sub_10022C350(&qword_100CAD060);
  sub_10002FE10();

  v14 = *(v0 + 56);
  type metadata accessor for WeatherServiceFetchOptions();
  sub_1000037E8();
  (*(v15 + 8))(v3 + v14);
  sub_10004190C();

  return swift_deallocObject();
}

uint64_t sub_100089DF8()
{
  sub_100008194();
  type metadata accessor for WeatherAsyncImage();
  sub_100003E98();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = type metadata accessor for URL();
  if (!sub_100024D10(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  v5 = (v0 + v3 + *(v1 + 48));

  sub_100008194();
  v6 = type metadata accessor for WeatherAsyncImage.LoadingState();
  v7 = *(v6 + 36);
  if (!sub_100024D10(v5 + v7, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v5 + v7, v4);
  }

  sub_10032D76C(*(v5 + *(v6 + 40)));
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t sub_100089F98()
{
  v1 = type metadata accessor for MeasuredConditionDetailLegendView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_1000037E8();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008A0DC()
{

  sub_100006F14(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_10008A12C()
{
  type metadata accessor for ActivityAction();
  sub_1000082C0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  v4 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for PreviewLocation();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        goto LABEL_6;
      case 2u:
        type metadata accessor for LocationOfInterest();
        goto LABEL_7;
      case 3u:

        v8 = *(type metadata accessor for SearchLocation() + 32);
        v9 = type metadata accessor for Location();
        if (!sub_100020EC4(v9))
        {
          (*(*(v1 - 8) + 8))(v4 + v8);
        }

        break;
      case 4u:

        break;
      default:
        break;
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    type metadata accessor for SavedLocation();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for SavedLocation.Placeholder();
    }

    else
    {
LABEL_6:
      type metadata accessor for Location();
    }

LABEL_7:
    sub_100003D98();
    (*(v6 + 8))(v0 + v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10008A2FC()
{
  v1 = type metadata accessor for LocationPreviewView();
  sub_100003DDC();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_100003DDC();
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0 + v3;

  sub_1000EBD74(*(v9 + 24), *(v9 + 32));
  v10 = v1[7];
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v11 + 8))(v9 + v10);
  }

  else
  {
  }

  sub_1000EBD74(*(v9 + v1[8]), *(v9 + v1[8] + 8));

  sub_10004E484();
  sub_10004E484();
  sub_1000206CC();
  sub_100006F14(v9 + v1[13]);
  swift_unknownObjectRelease();
  sub_100006F14(v9 + v1[15]);
  sub_1000206CC();
  v12 = (v0 + v8);
  type metadata accessor for PreviewLocation();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      type metadata accessor for Location();
      goto LABEL_8;
    case 2u:
      type metadata accessor for LocationOfInterest();
LABEL_8:
      sub_100003D98();
      (*(v13 + 8))(v0 + v8);
      break;
    case 3u:

      v28 = *(type metadata accessor for SearchLocation() + 32);
      v29 = type metadata accessor for Location();
      if (!sub_100024D10(v12 + v28, 1, v29))
      {
        (*(*(v29 - 8) + 8))(v12 + v28);
      }

      break;
    case 4u:

      break;
    default:
      break;
  }

  v14 = *(v6 + 32);
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v15 + 8))(v12 + v14);
  v16 = v12 + *(v6 + 36);
  type metadata accessor for LocationPreviewModalViewModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v19 = type metadata accessor for NewsArticle();
    v20 = v19[6];
    v21 = type metadata accessor for URL();
    if (!sub_100024D10(&v16[v20], 1, v21))
    {
      (*(*(v21 - 8) + 8))(&v16[v20], v21);
    }

    v22 = v19[7];
    type metadata accessor for Date();
    sub_100003D98();
    (*(v23 + 8))(&v16[v22]);
    v24 = *(*(v21 - 8) + 8);
    v24(&v16[v19[8]], v21);
    v25 = &v16[v19[9]];

    v26 = *(type metadata accessor for NewsChannel() + 24);
    if (!sub_100024D10(&v25[v26], 1, v21))
    {
      v24(&v25[v26], v21);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    type metadata accessor for URL();
    sub_100003D98();
    (*(v18 + 8))(v16);
  }

  return swift_deallocObject();
}

uint64_t sub_10008A7B4()
{
  type metadata accessor for RecordPinnedMapAnimatingViewModifier();
  sub_100003A0C();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_10022C350(&unk_100CE1000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_1000037E8();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  sub_100014490();

  return swift_deallocObject();
}

uint64_t sub_10008A8B4()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for WireframeScrollInterestView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[13], v1);

  return swift_deallocObject();
}

uint64_t sub_10008A9C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008AA04()
{
  v1 = (type metadata accessor for MoonScrubberHeaderView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_100006F14(v2 + 48);
  v3 = v2 + v1[9];

  v4 = type metadata accessor for MoonScrubberHeaderViewModel(0);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for Date();
  sub_1000037E8();
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);
  v8(v3 + *(v4 + 36), v6);
  v9 = v1[14];
  type metadata accessor for CoordinateSpace();
  sub_1000037E8();
  (*(v10 + 8))(v2 + v9);

  return swift_deallocObject();
}

uint64_t sub_10008ABB0()
{

  sub_100006F14(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10008ABF0()
{
  sub_10000C778();
  type metadata accessor for MoonComponentView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_1000EBD74(*v3, *(v3 + 8));
  v4 = v0[5];
  sub_10022C350(&qword_100CA71B0);
  if (sub_10001691C() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  sub_100028448(v0[6]);
  sub_100028448(v0[7]);
  v6 = v0[8];
  sub_10022C350(&qword_100CAD618);
  if (sub_10001691C() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  v8 = v0[9];
  sub_10022C350(&qword_100CB6EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ForegroundEffect();
    if (!sub_10000CABC(v9))
    {
      (*(*(v6 - 8) + 8))(v3 + v8, v6);
    }
  }

  else
  {
  }

  v10 = v0[10];
  sub_10022C350(&unk_100CE1000);
  if (sub_10001691C() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_100003D98();
    (*(v11 + 8))(v3 + v10);
  }

  else
  {
  }

  v12 = v0[11];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v13 + 8))(v3 + v12);
  v14 = v3 + v0[12];

  v15 = *(v14 + 32);
  if (v15 != 255)
  {
    sub_1002773E8(*(v14 + 16), *(v14 + 24), v15);
  }

  v16 = *(type metadata accessor for MoonComponentViewModel() + 28);
  type metadata accessor for Date();
  sub_100003D98();
  (*(v17 + 8))(v14 + v16);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008AEF8()
{
  sub_10000C778();
  type metadata accessor for ListLocationRowView(0);
  sub_100003A0C();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  sub_10022C350(&qword_100CA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v6 + 8))(v1 + v4);
  }

  else
  {
  }

  sub_10001673C(v0[5]);

  swift_unknownObjectRelease();
  sub_100006F14(v5 + v0[7]);
  v7 = v5 + v0[8];
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v8 + 8))(v7);
  v9 = type metadata accessor for ListLocationViewModel(0);
  sub_100014668(v9[6]);

  v10 = v7 + v9[7];
  type metadata accessor for ListLocationRowPrimaryText(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Date();
    if (!sub_1000057B4(v11))
    {
      sub_100003B20();
      (*(v12 + 8))(v10, v2);
    }
  }

  else
  {
  }

  sub_10000EA08(v7 + v9[8]);
  v13 = type metadata accessor for Date();
  if (!sub_1000246D4(v13))
  {
    sub_100022BC0();
    v14 = sub_1000B9940();
    v15(v14);
  }

  v16 = type metadata accessor for TimeZone();
  if (!sub_1000246D4(v16))
  {
    sub_100022BC0();
    v17 = sub_1000B9940();
    v18(v17);
  }

  sub_100014668(v9[12]);

  sub_100014668(v9[13]);

  sub_100014668(v9[15]);

  sub_100014668(v9[16]);

  sub_100014668(v9[17]);

  sub_100014668(v9[18]);

  sub_100014668(v9[19]);

  sub_100014668(v9[20]);

  v19 = v9[22];
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v20 + 8))(v7 + v19);
  sub_100014668(v9[25]);

  sub_10001673C(v0[9]);

  sub_10001673C(v0[11]);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008B214()
{

  return swift_deallocObject();
}

uint64_t sub_10008B25C()
{
  v1 = type metadata accessor for TemperatureAveragesHeroChartView();
  sub_100003DDC();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_1000E4DF8(*v3, *(v3 + 8));
  v4 = v1[5];
  sub_10022C350(&qword_100CA71B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  sub_100006F14(v3 + v1[7]);
  v6 = v3 + v1[8];

  v7 = type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  v8 = v7[9];
  type metadata accessor for TemperatureScaleConfiguration();
  sub_100003D98();
  (*(v9 + 8))(v6 + v8);

  sub_100452DEC(*(v6 + v7[12]), *(v6 + v7[12] + 8), *(v6 + v7[12] + 16), *(v6 + v7[12] + 24));
  v10 = v7[13];
  v11 = type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel(0);
  if (!sub_100024D10(v6 + v10, 1, v11))
  {
    type metadata accessor for Date();
    sub_100003D98();
    (*(v12 + 8))(v6 + v10);
  }

  v13 = v6 + v7[14];
  v14 = type metadata accessor for PeakUpperMarkModel(0);
  if (!sub_100024D10(v13, 1, v14))
  {
    type metadata accessor for Date();
    sub_100003D98();
    (*(v15 + 8))(v13);
    sub_100014298();
    sub_100014298();
    sub_100014298();
  }

  v16 = v6 + v7[15];
  type metadata accessor for DetailHeroChartLollipopModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
    v18 = *(active + 20);
    type metadata accessor for Date();
    sub_100003D98();
    (*(v19 + 8))(v16 + v18);
    v16 += *(active + 24);
  }

  type metadata accessor for LollipopDetailViewModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v21 = *(type metadata accessor for TitleAndDetailLollipopDetailViewModel(0) + 20);
    type metadata accessor for AttributedString();
    sub_100003D98();
    (*(v22 + 8))(v16 + v21);
    sub_100014298();
    sub_100014298();
    sub_100014298();
    sub_100014298();
  }

  else if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  v23 = v7[16];
  v24 = type metadata accessor for Date();
  sub_1000037E8();
  v26 = *(v25 + 8);
  v26(v6 + v23, v24);
  v26(v6 + v7[17], v24);
  v27 = v7[18];
  type metadata accessor for DetailChartGradientModel();
  sub_100003D98();
  (*(v28 + 8))(v6 + v27);

  return swift_deallocObject();
}

uint64_t sub_10008B6AC()
{

  sub_100006F14(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_10008B6EC()
{
  sub_10000C778();
  v1 = type metadata accessor for PrecipitationAmountsEditorView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v5 + 8))(v2 + v4);
  }

  v6 = *(v1 + 24);
  v7 = type metadata accessor for PrecipitationAmount();
  sub_1000037E8();
  v9 = *(v8 + 8);
  v9(v2 + v6, v7);

  v9(v2 + *(v1 + 32), v7);
  sub_10022C350(&qword_100CBB640);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008B8AC()
{

  return swift_deallocObject();
}

uint64_t sub_10008B8FC()
{
  sub_10000C778();
  type metadata accessor for PredictedLocationNotificationsDebugView();
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = sub_10022C350(&qword_100CC39F0);
  sub_1000037E8();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = v0[7];
  sub_10022C350(&qword_100CC39F8);
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);
  v9 = v0[8];
  sub_10022C350(&qword_100CC3A00);
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);
  v11 = sub_10004E684();
  (v6)(v11);

  sub_1000247C4();
  sub_100006F14(v3 + v0[12]);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008BA78()
{
  swift_unknownObjectRelease();

  sub_100006F14(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_10008BAD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SizeFittingCanvasView();
  v4 = v3;
  v5 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  if (v1 == 1)
  {
    TupleTypeMetadata = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(v3);
    sub_10001EFB8();
    while (v1 != v8)
    {
      *(v7 + 8 * v8) = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8 * v8);
      ++v8;
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 8))(v0 + v5);
  v9 = *(v4 + 44);
  sub_10022C350(&qword_100CA3EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Font.Context();
    sub_1000037E8();
    (*(v10 + 8))(v0 + v5 + v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008BC90()
{
  sub_10000C778();
  v1 = type metadata accessor for DayWeatherEditorView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v5 + 8))(v2 + v4);
  }

  v6 = *(v1 + 24);
  v7 = type metadata accessor for DayWeather();
  sub_1000037E8();
  v9 = *(v8 + 8);
  v9(v2 + v6, v7);

  v9(v2 + *(v1 + 32), v7);
  sub_10022C350(&qword_100CC4350);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008BE50()
{
  swift_unknownObjectRelease();

  sub_100018450();

  return swift_deallocObject();
}

uint64_t sub_10008BE8C()
{
  v1 = *(type metadata accessor for NotificationsOptInComponentView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008BF6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008BFAC()
{
  v1 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_100168B1C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));

  v3 = *(v1 + 24);
  type metadata accessor for Location.Identifier();
  sub_1000037E8();
  (*(v4 + 8))(v2 + v3);

  v5 = *(v1 + 40);
  sub_10022C350(&qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008C160()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DetailContainerView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v6 + 8))(v3 + v5);
  }

  v7 = v3 + v2[9];
  type metadata accessor for DetailType();
  sub_1000037E8();
  (*(v8 + 8))(v7);
  v9 = type metadata accessor for DetailViewVisibilityTrackerModel();
  v10 = *(v9 + 20);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v11 + 8))(v7 + v10);
  v12 = *(v9 + 24);
  type metadata accessor for DetailViewOrigin();
  sub_1000037E8();
  (*(v13 + 8))(v7 + v12);
  sub_100006F14(v3 + v2[10]);

  (*(*(v1 - 8) + 8))(v3 + v2[16], v1);

  return swift_deallocObject();
}

uint64_t sub_10008C3C0()
{
  v1 = (type metadata accessor for PrecipitationAveragesHeroChartView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1000E4DF8(*v2, *(v2 + 8));
  sub_100006F14(v2 + 16);
  v3 = v2 + v1[8];

  sub_100452DEC(*(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128));

  v4 = type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  v5 = v3 + v4[12];
  v6 = type metadata accessor for Date();
  sub_1000037E8();
  v8 = *(v7 + 8);
  v8(v5, v6);
  type metadata accessor for PeakUpperMarkModel(0);
  sub_100003DAC();
  sub_100003DAC();
  sub_100003DAC();
  v8(v3 + v4[13], v6);
  sub_100003DAC();
  sub_100003DAC();
  sub_100003DAC();
  v9 = v3 + v4[14];
  type metadata accessor for DetailHeroChartLollipopModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
    v8(v9 + *(active + 20), v6);
    v9 += *(active + 24);
  }

  type metadata accessor for LollipopDetailViewModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v12 = *(type metadata accessor for TitleAndDetailLollipopDetailViewModel(0) + 20);
    type metadata accessor for AttributedString();
    sub_1000037E8();
    (*(v13 + 8))(v9 + v12);
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
  }

  else if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v8(v3 + v4[15], v6);
  v8(v3 + v4[16], v6);

  return swift_deallocObject();
}

uint64_t sub_10008C70C()
{

  return swift_deallocObject();
}

uint64_t sub_10008C76C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for SlowDeviceGridView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  swift_unknownObjectRelease();
  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);

  v4 = v3 + v2[13];
  sub_100168B1C(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72));

  return swift_deallocObject();
}

uint64_t sub_10008C8A0()
{
  v1 = type metadata accessor for ChartView(0);
  sub_100003DDC();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = type metadata accessor for ChartViewModel(0);
  v5 = v4[5];
  type metadata accessor for ChartKind();
  sub_100003D98();
  (*(v6 + 8))(v3 + v5);

  v7 = v4[7];
  type metadata accessor for DetailChartExtrema();
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);

  sub_1000209AC(v3 + v4[11]);
  v9 = v3 + v4[12];
  v10 = sub_10022C350(&qword_100CAC408);
  v11 = *(v10 + 48);
  v12 = type metadata accessor for Date();
  if (!sub_100030484(v9 + v11))
  {
    sub_100003B20();
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = *(v10 + 64);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v15 + 8))(v9 + v14);
  v16 = v3 + v4[14];
  v17 = sub_10022C350(&qword_100CAC418);
  if (!sub_100005BB8(v17))
  {

    v18 = *(v9 + 48);
    if (!sub_100030484(v16 + v18))
    {
      sub_100003B20();
      (*(v19 + 8))(v16 + v18, v12);
    }
  }

  v20 = v4[16];
  type metadata accessor for ChartDarkeningScrim();
  sub_100003D98();
  (*(v21 + 8))(v3 + v20);

  sub_100018624();
  v23 = *(v22 + 8);
  v25 = sub_1000697B4(v24);
  v23(v25);
  v26 = sub_1000697B4(v4[19]);
  v23(v26);
  v27 = sub_1000697B4(v4[20]);
  v23(v27);
  v28 = v4[21];
  v29 = type metadata accessor for DetailChartDataElement();
  if (!sub_100030484(v3 + v28))
  {
    sub_100003B20();
    (*(v30 + 8))(v3 + v28, v29);
  }

  v31 = v4[23];
  type metadata accessor for ChartPeakMarkStyle();
  sub_100003D98();
  (*(v32 + 8))(v3 + v31);

  v33 = v4[26];
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_100003D98();
  (*(v34 + 8))(v3 + v33);
  v35 = v4[27];
  type metadata accessor for ChartPastDataTreatment();
  sub_100003D98();
  (*(v36 + 8))(v3 + v35);
  sub_100028874(v4[28]);

  sub_100028874(v4[29]);

  sub_100028874(v4[30]);

  sub_100028874(v4[31]);

  sub_100028874(v4[32]);

  sub_100028874(v4[33]);

  sub_100051F98();
  sub_10022C350(&qword_100CA71B0);
  if (sub_10002FF98() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v37 + 8))(v4 + v3);
  }

  else
  {
  }

  v38 = *(v1 + 40);
  sub_10022C350(&qword_100CA2D60);
  if (sub_10002FF98() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v39 + 8))(v3 + v38);
  }

  else
  {
  }

  v40 = *(v1 + 44);
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v41 + 8))(v3 + v40);
  sub_1000116BC();

  return swift_deallocObject();
}

uint64_t sub_10008CD9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_10008CDE4()
{
  sub_10004E348();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_100020A54();
  v3 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  sub_100003DDC();
  v5 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  sub_10003C724();
  type metadata accessor for Binding();
  sub_10000CDE8();
  v7 = *(v6 + 8);
  v8 = (v6 + 8);
  v7(v5 + v9, v1);
  v10 = sub_100037270();
  v7(v10, v1);
  sub_10003C724();
  type metadata accessor for State();
  sub_1000715A4();
  sub_1000B0EC4();

  sub_100032688();

  sub_1000D3F54();
  sub_1000D3F54();
  sub_1000D3F54();
  if (!sub_10004E928())
  {
    sub_100003B20();
    v16 = *(v11 + 8);
    v12 = sub_10001173C();
    v13(v12);
    sub_100069878();
    sub_1000C83AC();
    v8();
    v14 = sub_1000249C0();
    v16(v14, v2);
    v15 = sub_1000B99EC();
    (v8)(v15);
  }

  sub_100011680();
  type metadata accessor for Optional();
  sub_100013B04();
  type metadata accessor for State();
  sub_1000715A4();
  sub_1000D3F54();
  sub_100019D18();
  sub_10003C708(*(v3 + 108));
  sub_10002C9B0();
  sub_100013454();
}

uint64_t sub_10008CFCC()
{
  v1 = (type metadata accessor for LollipopChartOverlayView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_100006F14(v2);
  v3 = v1[7];
  type metadata accessor for ChartProxy();
  sub_1000037E8();
  (*(v4 + 8))(v2 + v3);
  v5 = v1[8];
  type metadata accessor for GeometryProxy();
  sub_1000037E8();
  (*(v6 + 8))(v2 + v5);
  v7 = v1[9];
  v8 = type metadata accessor for Date();
  sub_1000037E8();
  v10 = *(v9 + 8);
  v10(v2 + v7, v8);
  v10(v2 + v1[10], v8);
  v11 = v1[12];
  sub_10022C350(&qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v12 + 8))(v2 + v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008D1A8()
{
  v1 = (type metadata accessor for CalendarHeaderView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1000E4DF8(*v2, *(v2 + 8));

  v3 = v1[8];
  v4 = type metadata accessor for Date();
  sub_1000037E8();
  v6 = *(v5 + 8);
  v6(v2 + v3, v4);
  v6(v2 + v1[9], v4);
  sub_100006F14(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t sub_10008D2CC()
{
  v1 = type metadata accessor for TrackExposureModifier();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 28);
  v4 = type metadata accessor for Date();
  if (!sub_100024D10(v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  sub_10022C350(&qword_100CBB758);

  return swift_deallocObject();
}

uint64_t sub_10008D40C()
{

  return swift_deallocObject();
}

uint64_t sub_10008D44C()
{
  v1 = type metadata accessor for LocationGridView();
  sub_100003DDC();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = type metadata accessor for Location.Identifier();
  sub_1000037E8();
  v6 = *(v5 + 8);
  v7 = (v5 + 8);
  v6(v3, v4);
  v8 = type metadata accessor for LocationViewModel();
  v9 = v8[5];
  if (!sub_1000186A8(v3 + v9))
  {
    v6(v3 + v9, v4);
  }

  v10 = v3 + v8[6];

  sub_10016AD1C(*(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40));

  sub_100037CD8();
  sub_10000CE10();
  v11 = type metadata accessor for LocationFooterViewModel();
  if (!sub_100005BB8(v11))
  {

    if (*(v4 + 24))
    {
    }

    v12 = v4 + v7[9];

    v13 = *(type metadata accessor for LearnMoreAttributorViewModel() + 24);
    v14 = type metadata accessor for URL();
    if (!sub_100024D10(v12 + v13, 1, v14))
    {
      sub_100003B20();
      (*(v15 + 8))(v12 + v13, v14);
    }

    v16 = v7[11];
    v17 = type metadata accessor for LocationOfInterest();
    if (!sub_100024D10(v4 + v16, 1, v17))
    {
      sub_100003B20();
      (*(v18 + 8))(v4 + v16, v17);
    }

    v19 = v4 + v7[14];
    v20 = type metadata accessor for HomeAndWorkRefinementRowViewModel();
    if (!sub_100005BB8(v20))
    {
      v21 = v7[5];
      type metadata accessor for Location();
      sub_100003D98();
      (*(v22 + 8))(v19 + v21);
      sub_100020A90();
      v24 = sub_10000ED28(v23);
      v25(v24);
    }
  }

  v26 = v8[19];
  type metadata accessor for Date();
  sub_100003D98();
  (*(v27 + 8))(v3 + v26);
  v28 = v8[20];
  v29 = type metadata accessor for ForegroundEffect();
  if (!sub_1000186A8(v3 + v28))
  {
    sub_100003B20();
    (*(v30 + 8))(v3 + v28, v29);
  }

  sub_10000CE10();
  v31 = type metadata accessor for PreviewLocation();
  if (!sub_100005BB8(v31))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        type metadata accessor for Location();
        goto LABEL_19;
      case 2u:
        type metadata accessor for LocationOfInterest();
LABEL_19:
        sub_100003D98();
        (*(v32 + 8))(v29);
        break;
      case 3u:

        v37 = *(type metadata accessor for SearchLocation() + 32);
        type metadata accessor for Location();
        if (!sub_10000CAFC(v29 + v37))
        {
          sub_100003B20();
          (*(v38 + 8))(v29 + v37);
        }

        break;
      case 4u:

        break;
      default:
        break;
    }
  }

  swift_unknownObjectRelease();
  sub_100006F14(v3 + *(v1 + 36));
  v33 = *(v1 + 40);
  v34 = v33 + *(type metadata accessor for DisplayMetrics() + 36);
  type metadata accessor for DynamicTypeSize();
  sub_100003D98();
  (*(v35 + 8))(v3 + v34);

  sub_100074E5C();
  sub_100031788();

  return swift_deallocObject();
}

uint64_t sub_10008D98C()
{
  v1 = type metadata accessor for ViewData();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for DetailViewVisibilityTrackerModel() - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v20 = type metadata accessor for DetailViewOriginationData();
  sub_1000037C4();
  v11 = v10;
  v12 = (v9 + *(v11 + 80) + v8 + 1) & ~*(v11 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v13 = v0 + v8;
  type metadata accessor for DetailType();
  sub_100003D98();
  (*(v14 + 8))(v0 + v8);
  v15 = v7[7];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v16 + 8))(v13 + v15);
  v17 = v7[8];
  type metadata accessor for DetailViewOrigin();
  sub_100003D98();
  (*(v18 + 8))(v13 + v17);
  (*(v11 + 8))(v0 + v12, v20);

  return swift_deallocObject();
}

uint64_t sub_10008DBC0()
{
  type metadata accessor for WeatherApp();
  sub_100008560();
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  sub_100006F14(v0 + 16);
  sub_10022C350(&qword_100CD5450);
  sub_1000037E8();
  (*(v5 + 8))(v0 + v4);
  sub_10004E9D0();
  v6 = sub_100016E10();
  if (!sub_1000041EC(v6))
  {

    v7 = sub_100028A20();
    if (!sub_100003EB0(v7))
    {
      sub_100019B68();
      (*(v8 + 8))(v1, v2);
    }

    sub_10022C350(&qword_100CD5528);

    sub_100013B60();
  }

  sub_10022C350(&qword_100CD5458);

  return swift_deallocObject();
}

uint64_t sub_10008DD34()
{
  type metadata accessor for PredictedLocationIntentDonationsDebugView();
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CC39F0);
  sub_100003D98();
  (*(v4 + 8))(v3);
  v5 = v0[7];
  sub_10022C350(&qword_100CC39F8);
  sub_100003D98();
  (*(v6 + 8))(v3 + v5);
  v7 = v0[8];
  sub_10022C350(&qword_100CC3A00);
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);

  sub_10003C7D8();
  sub_100006F14(v3 + v0[11]);

  return swift_deallocObject();
}

uint64_t sub_10008DEA0()
{

  return swift_deallocObject();
}

uint64_t sub_10008DEE0()
{
  sub_10000C778();
  v1 = type metadata accessor for SunriseSunsetInteractiveChartView();
  sub_100003DDC();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + v3;
  v5 = type metadata accessor for Date();
  if (!sub_100024D10(v0 + v3, 1, v5))
  {
    sub_100003B20();
    (*(v6 + 8))(v0 + v3, v5);
  }

  sub_10022C350(&qword_100CBB758);

  v7 = v4 + v1[6];
  if (!sub_100024D10(v7, 1, v5))
  {
    sub_100003B20();
    (*(v8 + 8))(v7, v5);
  }

  v9 = v4 + v1[8];

  v10 = *(sub_10022C350(&qword_100CDB158) + 32);
  v11 = type metadata accessor for DetailChartDataElement();
  if (!sub_100024D10(v9 + v10, 1, v11))
  {
    sub_100003B20();
    (*(v12 + 8))(v9 + v10, v11);
  }

  v13 = v1[9];
  sub_10022C350(&qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v14 + 8))(v4 + v13);
  }

  else
  {
  }

  v15 = v1[11];
  type metadata accessor for SunriseSunsetDetailChartViewModel();
  sub_100003D98();
  (*(v16 + 8))(v4 + v15);
  v17 = v1[13];
  type metadata accessor for SunriseSunsetDetailChartContentStyle();
  sub_100003D98();
  (*(v18 + 8))(v4 + v17);
  v19 = v1[17];
  type metadata accessor for Calendar();
  sub_100003D98();
  (*(v20 + 8))(v4 + v19);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008E1E4()
{
  v1 = type metadata accessor for WeatherEditorView();
  v161 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v161 + 16) & ~v161);
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_100003D98();
    (*(v5 + 8))(v2 + v4);
  }

  v6 = v1[5];
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v7 + 8))(v2 + v6);
  v8 = v2 + v1[7];
  type metadata accessor for LocationWeatherDataState(0);
  v9 = swift_getEnumCaseMultiPayload();
  v162 = v0 + ((v161 + 16) & ~v161);
  v163 = v1;
  if (v9 == 2)
  {

    if (*(v8 + 24) >= 0xEuLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v9 != 1)
    {
      if (v9)
      {
        goto LABEL_42;
      }

      type metadata accessor for NewsDataModel();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        type metadata accessor for News();
        sub_100003D98();
        (*(v27 + 8))(v8);
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v10 = type metadata accessor for WeatherData(0);
    v11 = v10[5];
    v12 = type metadata accessor for Locale();
    if (!sub_100024D10(v8 + v11, 1, v12))
    {
      sub_100003B20();
      (*(v13 + 8))(v8 + v11, v12);
    }

    v14 = v10[6];
    type metadata accessor for WeatherDataModel();
    sub_100003D98();
    (*(v15 + 8))(v8 + v14);
    v16 = v8 + v10[7];
    v17 = sub_10022C350(&qword_100CAC710);
    v18 = sub_10000C834();
    if (!sub_100024D10(v18, v19, v17))
    {
      v20 = type metadata accessor for Date();
      sub_1000037E8();
      v22 = *(v21 + 8);
      v22(v16, v20);
      v23 = *(v17 + 48);
      v24 = type metadata accessor for WeatherDataRelevancy();
      if (!sub_100024D10(v16 + v23, 1, v24))
      {
        v22(v16 + v23, v20);
      }
    }

    v25 = v8 + v10[8];
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 == 1)
    {
      type metadata accessor for WeatherStatisticsModel();
      sub_100003D98();
      (*(v28 + 8))(v25);
    }

    else if (!v26)
    {
    }

    v29 = type metadata accessor for WeatherDataOverrides();
    v30 = sub_10000C834();
    if (!sub_100024D10(v30, v31, v29))
    {
      v32 = type metadata accessor for Date();
      v33 = sub_10000C834();
      if (!sub_100024D10(v33, v34, v32))
      {
        sub_100006494();
        v35 = sub_100003940();
        v36(v35);
      }

      if (!sub_100016FF4())
      {
        sub_100006494();
        v37 = sub_10003C950();
        v38(v37);
      }
    }

    v159 = sub_10022C350(&qword_100CA75D8);
    v39 = v8 + *(v159 + 48);
    v40 = type metadata accessor for UUID();
    sub_1000037E8();
    v42 = *(v41 + 8);
    v42(v39, v40);
    v43 = type metadata accessor for PreprocessedWeatherData();

    v44 = v39 + v43[6];

    v45 = v44 + *(type metadata accessor for FeelsLikeComponentPreprocessedDataModel() + 28);
    v46 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    if (!sub_100024D10(v45, 1, v46))
    {

      v47 = v45 + *(v46 + 20);
      type metadata accessor for TemperatureScaleConfiguration();
      sub_100003D98();
      (*(v48 + 8))(v47);
      type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    }

    v49 = v39 + v43[7];
    v50 = sub_10000C834();
    if (!sub_100024D10(v50, v51, v40))
    {
      v52 = sub_100003940();
      (v42)(v52);
    }

    type metadata accessor for HourlyForecastComponentViewModel(0);

    type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
    type metadata accessor for WeatherDescription();
    if (!sub_100016FF4())
    {
      sub_100006494();
      v53 = sub_10003C950();
      v54(v53);
    }

    sub_100069B2C();

    v55 = v49 + *(type metadata accessor for ListPreprocessedDataModel() + 32);
    v56 = type metadata accessor for Date();
    sub_1000037E8();
    v157 = *(v57 + 8);
    v157(v55, v56);
    v58 = type metadata accessor for WeatherConditionBackgroundTimeData();
    v59 = *(v58 + 20);
    v60 = type metadata accessor for Elevation();
    if (!sub_100024D10(v55 + v59, 1, v60))
    {
      sub_100003B20();
      (*(v61 + 8))(v55 + v59, v60);
    }

    v62 = *(v58 + 24);
    v63 = type metadata accessor for BackgroundMoonData();
    if (!sub_100024D10(v55 + v62, 1, v63))
    {
      sub_100003B20();
      (*(v64 + 8))(v55 + v62, v63);
    }

    sub_100069B2C();

    sub_100006494();
    v65 = sub_100003940();
    v66(v65);
    v67 = type metadata accessor for UVIndexComponentPreprocessedDataModel();
    sub_1000047FC(*(v67 + 20));

    sub_1000047FC(*(v67 + 24));

    sub_100069B2C();

    v68 = v39 + v43[12];
    type metadata accessor for PressureTrend();
    sub_100003D98();
    (*(v69 + 8))(v68);
    v70 = type metadata accessor for PressureComponentPreprocessedDataModel();
    sub_1000047FC(v70[5]);

    sub_1000047FC(v70[6]);

    sub_1000047FC(v70[7]);

    sub_1000047FC(v70[9]);

    sub_100069B2C();

    v71 = v39 + v43[14];
    v157(v71, v56);
    v72 = *(v58 + 20);
    v73 = sub_10000CF38();
    if (!sub_100024D10(v73, v74, v60))
    {
      sub_100003B20();
      (*(v75 + 8))(v71 + v72, v60);
    }

    v76 = *(v58 + 24);
    v77 = sub_10000CF38();
    v2 = v162;
    if (!sub_100024D10(v77, v78, v63))
    {
      sub_100003B20();
      (*(v79 + 8))(v71 + v76, v63);
    }

    sub_100069B2C();

    v80 = *(v159 + 64);
    type metadata accessor for NewsDataModel();
    v1 = v163;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
LABEL_40:

      goto LABEL_42;
    }

    type metadata accessor for News();
    sub_100003D98();
    (*(v81 + 8))(v8 + v80);
  }

LABEL_42:
  v82 = v2 + v1[8];

  v83 = type metadata accessor for WeatherData(0);
  v84 = v83[5];
  v85 = type metadata accessor for Locale();
  if (!sub_100024D10(v82 + v84, 1, v85))
  {
    sub_100003B20();
    (*(v86 + 8))(v82 + v84, v85);
  }

  v87 = v83[6];
  type metadata accessor for WeatherDataModel();
  sub_100003D98();
  v158 = *(v88 + 8);
  v160 = v89;
  v158(v82 + v87);
  v90 = v82 + v83[7];
  v91 = sub_10022C350(&qword_100CAC710);
  v92 = sub_10000C834();
  if (!sub_100024D10(v92, v93, v91))
  {
    v94 = type metadata accessor for Date();
    sub_1000037E8();
    v96 = *(v95 + 8);
    v96(v90, v94);
    v97 = *(v91 + 48);
    v98 = type metadata accessor for WeatherDataRelevancy();
    if (!sub_100024D10(v90 + v97, 1, v98))
    {
      v96(v90 + v97, v94);
    }
  }

  v99 = v82 + v83[8];
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  v100 = swift_getEnumCaseMultiPayload();
  if (v100 == 1)
  {
    type metadata accessor for WeatherStatisticsModel();
    sub_100003D98();
    (*(v101 + 8))(v99);
  }

  else if (!v100)
  {
  }

  v102 = type metadata accessor for WeatherDataOverrides();
  v103 = sub_10000C834();
  if (!sub_100024D10(v103, v104, v102))
  {
    v105 = type metadata accessor for Date();
    v106 = sub_10000C834();
    if (!sub_100024D10(v106, v107, v105))
    {
      sub_100006494();
      v108 = sub_100003940();
      v109(v108);
    }

    if (!sub_100016FF4())
    {
      sub_100006494();
      v110 = sub_10003C950();
      v111(v110);
    }
  }

  v112 = v2 + v1[9];
  v113 = type metadata accessor for UUID();
  sub_1000037E8();
  v115 = *(v114 + 8);
  v115(v112, v113);
  v116 = type metadata accessor for PreprocessedWeatherData();

  v117 = v112 + v116[6];

  v118 = v117 + *(type metadata accessor for FeelsLikeComponentPreprocessedDataModel() + 28);
  v119 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  if (!sub_100024D10(v118, 1, v119))
  {

    v120 = v118 + *(v119 + 20);
    type metadata accessor for TemperatureScaleConfiguration();
    sub_100003D98();
    (*(v121 + 8))(v120);
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
  }

  v122 = v112 + v116[7];
  v123 = sub_10000C834();
  if (!sub_100024D10(v123, v124, v113))
  {
    v125 = sub_100003940();
    (v115)(v125);
  }

  type metadata accessor for HourlyForecastComponentViewModel(0);

  type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
  type metadata accessor for WeatherDescription();
  if (!sub_100016FF4())
  {
    sub_100006494();
    v126 = sub_10003C950();
    v127(v126);
  }

  sub_100013D5C();

  v128 = v122 + *(type metadata accessor for ListPreprocessedDataModel() + 32);
  v129 = type metadata accessor for Date();
  sub_1000037E8();
  v156 = *(v130 + 8);
  v156(v128, v129);
  v131 = type metadata accessor for WeatherConditionBackgroundTimeData();
  v132 = *(v131 + 20);
  v133 = type metadata accessor for Elevation();
  if (!sub_100024D10(v128 + v132, 1, v133))
  {
    sub_100003B20();
    (*(v134 + 8))(v128 + v132, v133);
  }

  v135 = *(v131 + 24);
  v136 = type metadata accessor for BackgroundMoonData();
  if (!sub_100024D10(v128 + v135, 1, v136))
  {
    sub_100003B20();
    (*(v137 + 8))(v128 + v135, v136);
  }

  sub_100013D5C();

  sub_100006494();
  v138 = sub_100003940();
  v139(v138);
  v140 = type metadata accessor for UVIndexComponentPreprocessedDataModel();
  sub_1000047FC(*(v140 + 20));

  sub_1000047FC(*(v140 + 24));

  sub_100013D5C();

  v141 = v112 + v116[12];
  type metadata accessor for PressureTrend();
  sub_100003D98();
  (*(v142 + 8))(v141);
  v143 = type metadata accessor for PressureComponentPreprocessedDataModel();
  sub_1000047FC(v143[5]);

  sub_1000047FC(v143[6]);

  sub_1000047FC(v143[7]);

  sub_1000047FC(v143[9]);

  sub_100013D5C();

  v144 = v112 + v116[14];
  v156(v144, v129);
  v145 = *(v131 + 20);
  v146 = sub_10000CF38();
  if (!sub_100024D10(v146, v147, v133))
  {
    sub_100003B20();
    (*(v148 + 8))(v144 + v145, v133);
  }

  v149 = *(v131 + 24);
  v150 = sub_10000CF38();
  if (!sub_100024D10(v150, v151, v136))
  {
    sub_100003B20();
    (*(v152 + 8))(v144 + v149, v136);
  }

  sub_100013D5C();

  v153 = v163[10];
  type metadata accessor for NewsDataModel();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for News();
    sub_100003D98();
    (*(v154 + 8))(v162 + v153);
  }

  (v158)(v162 + v163[12], v160);
  sub_10022C350(&qword_100CDE580);

  return swift_deallocObject();
}