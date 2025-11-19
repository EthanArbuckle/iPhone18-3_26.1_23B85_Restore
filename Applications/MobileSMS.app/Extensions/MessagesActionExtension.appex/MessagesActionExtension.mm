uint64_t sub_1000015F8(uint64_t a1)
{
  v2 = sub_100001C4C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000016A4();
  sub_100003C0C();
  return 0;
}

unint64_t sub_1000016A4()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t variable initialization expression of ConversationListFocusFilterAction._enableFocusFiltering()
{
  v0 = sub_100003B8C();
  v27 = *(v0 - 8);
  v28 = v0;
  v1 = *(v27 + 64);
  __chkstk_darwin();
  v26 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (*(*(sub_100001BB0(&qword_10000C028, &qword_100003F30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v25 = v23 - v4;
  v5 = (*(*(sub_100001BB0(&qword_10000C030, &qword_100003F38) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v24 = v23 - v6;
  v7 = (*(*(sub_100001BB0(&qword_10000C038, &unk_100003F40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v23 - v8;
  v10 = sub_100003BBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(sub_100003BFC() - 8) + 64);
  __chkstk_darwin();
  v16 = *(*(sub_100003C5C() - 8) + 64);
  __chkstk_darwin();
  v17 = sub_100003BCC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v23[1] = sub_100001BB0(&qword_10000C040, &unk_1000041F0);
  sub_100003C4C();
  sub_100003BEC();
  (*(v11 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100003BDC();
  (*(v18 + 56))(v9, 1, 1, v17);
  v29 = 2;
  v20 = sub_100003C6C();
  (*(*(v20 - 8) + 56))(v24, 1, 1, v20);
  v21 = sub_100003ACC();
  (*(*(v21 - 8) + 56))(v25, 1, 1, v21);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return sub_100003B2C();
}

uint64_t sub_100001BB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001C4C()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

void (*ConversationListFocusFilterAction.enableFocusFiltering.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100003AEC();
  return sub_100001D8C;
}

void sub_100001D8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static ConversationListFocusFilterAction.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  static ConversationListFocusFilterAction.openAppWhenRun = a1;
  return result;
}

uint64_t sub_100001EF0()
{
  v0 = sub_100003BBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_100003BFC() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_100003C5C() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_100003BCC();
  sub_1000039F4(v7, static ConversationListFocusFilterAction.title);
  sub_100002148(v7, static ConversationListFocusFilterAction.title);
  sub_100003C4C();
  sub_100003BEC();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100003BDC();
}

uint64_t ConversationListFocusFilterAction.title.unsafeMutableAddressor()
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v0 = sub_100003BCC();

  return sub_100002148(v0, static ConversationListFocusFilterAction.title);
}

uint64_t sub_100002148(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static ConversationListFocusFilterAction.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_100003BCC();
  v3 = sub_100002148(v2, static ConversationListFocusFilterAction.title);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ConversationListFocusFilterAction.title.setter(uint64_t a1)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_100003BCC();
  v3 = sub_100002148(v2, static ConversationListFocusFilterAction.title);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ConversationListFocusFilterAction.title.modify())()
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v0 = sub_100003BCC();
  sub_100002148(v0, static ConversationListFocusFilterAction.title);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static ConversationListFocusFilterAction.description.getter@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = (*(*(sub_100001BB0(&qword_10000C038, &unk_100003F40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = v17 - v2;
  v4 = sub_100003BBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_100003BFC() - 8) + 64);
  __chkstk_darwin();
  v10 = *(*(sub_100003C5C() - 8) + 64);
  __chkstk_darwin();
  v11 = sub_100003BCC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  sub_100003C4C();
  sub_100003BEC();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_100003BDC();
  (*(v12 + 56))(v3, 1, 1, v11);
  v14 = v17[0];
  sub_100003B4C();
  v15 = sub_100003B3C();
  return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
}

uint64_t ConversationListFocusFilterAction.perform()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100003C9C();
  v2[4] = sub_100003C8C();
  v4 = sub_100003C7C();

  return _swift_task_switch(sub_100002774, v4, v3);
}

uint64_t sub_100002774()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  sub_100003AFC();
  v3 = *(v0 + 40);
  if (v3 == 2)
  {
    if (qword_10000C018 != -1)
    {
      swift_once();
    }

    v4 = sub_100003C3C();
    sub_100002148(v4, qword_10000C4B0);
    v5 = sub_100003C1C();
    v6 = sub_100003CAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Focus filter action is not configured for the current focus", v7, 2u);
      LOBYTE(v3) = 0;
LABEL_10:

      goto LABEL_12;
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    if (qword_10000C018 != -1)
    {
      swift_once();
    }

    v8 = sub_100003C3C();
    sub_100002148(v8, qword_10000C4B0);
    v5 = sub_100003C1C();
    v9 = sub_100003CAC();
    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v9, "Focus filter action is configured for the current focus, with a value of %{BOOL}d", v10, 8u);
      goto LABEL_10;
    }
  }

LABEL_12:

  v11 = [objc_opt_self() messagesAppDomain];
  if (v11)
  {
    v12 = v11;
    [v11 setConversationListFocusFilterActionEnabled:v3 & 1];
  }

  v13 = *(v0 + 16);
  sub_100003ADC();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t ConversationListFocusFilterAction.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = (*(*(sub_100001BB0(&qword_10000C050, &unk_100004020) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v19 = &v18 - v2;
  v3 = (*(*(sub_100001BB0(&qword_10000C038, &unk_100003F40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = sub_100003BBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_100003BFC() - 8) + 64);
  __chkstk_darwin();
  v12 = *(*(sub_100003C5C() - 8) + 64);
  __chkstk_darwin();
  v13 = sub_100003BCC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  sub_100003C4C();
  sub_100003BEC();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100003BDC();
  (*(v14 + 56))(v5, 1, 1, v13);
  v16 = sub_100003B6C();
  (*(*(v16 - 8) + 56))(v19, 1, 1, v16);
  return sub_100003B7C();
}

uint64_t sub_100002D0C()
{
  v0 = sub_100003C3C();
  sub_1000039F4(v0, qword_10000C4B0);
  sub_100002148(v0, qword_10000C4B0);
  return sub_100003C2C();
}

uint64_t sub_100002D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to static SetFocusFilterIntent.suggestedFocusFilters(for:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100002E3C;

  return static SetFocusFilterIntent.suggestedFocusFilters(for:)(a1, a2, a3);
}

uint64_t sub_100002E3C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100002F4C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002FEC;

  return ConversationListFocusFilterAction.perform()(a1, v4);
}

uint64_t sub_100002FEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000030E0@<X0>(uint64_t *a1@<X8>)
{
  result = _s23MessagesActionExtension027ConversationListFocusFilterB0VACycfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_10000310C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002FEC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000031D0(uint64_t a1)
{
  v2 = sub_100003714();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000320C(uint64_t a1)
{
  v2 = sub_10000376C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t _s23MessagesActionExtension027ConversationListFocusFilterB0VACycfC_0()
{
  v0 = sub_100003B8C();
  v27 = *(v0 - 8);
  v28 = v0;
  v1 = *(v27 + 64);
  __chkstk_darwin();
  v26 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (*(*(sub_100001BB0(&qword_10000C028, &qword_100003F30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v25 = v23 - v4;
  v5 = (*(*(sub_100001BB0(&qword_10000C030, &qword_100003F38) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v24 = v23 - v6;
  v7 = (*(*(sub_100001BB0(&qword_10000C038, &unk_100003F40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v23 - v8;
  v10 = sub_100003BBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(sub_100003BFC() - 8) + 64);
  __chkstk_darwin();
  v16 = *(*(sub_100003C5C() - 8) + 64);
  __chkstk_darwin();
  v17 = sub_100003BCC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v23[1] = sub_100001BB0(&qword_10000C040, &unk_1000041F0);
  sub_100003C4C();
  sub_100003BEC();
  (*(v11 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100003BDC();
  (*(v18 + 56))(v9, 1, 1, v17);
  v29 = 2;
  v20 = sub_100003C6C();
  (*(*(v20 - 8) + 56))(v24, 1, 1, v20);
  v21 = sub_100003ACC();
  (*(*(v21 - 8) + 56))(v25, 1, 1, v21);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return sub_100003B2C();
}

unint64_t sub_100003714()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_10000376C()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_1000037C4()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_10000381C()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_1000038E0()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100003948()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    sub_1000039AC(&qword_10000C088, &qword_1000041E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_1000039AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1000039F4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}