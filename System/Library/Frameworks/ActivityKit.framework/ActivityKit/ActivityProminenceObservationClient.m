@interface ActivityProminenceObservationClient
- (_TtC11ActivityKit35ActivityProminenceObservationClient)init;
- (id)listenForActivityProminenceWithActivityIdentifier:(id)a3 handler:(id)a4;
@end

@implementation ActivityProminenceObservationClient

- (id)listenForActivityProminenceWithActivityIdentifier:(id)a3 handler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = qword_1EB09ECB8;
  v8 = a3;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB09ECC8;
  v13[4] = sub_1A2C957C0;
  v13[5] = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1A2C9576C;
  v13[3] = &block_descriptor_63_1;
  v10 = _Block_copy(v13);

  v11 = [v9 listenForActivityProminenceWithActivityIdentifier:v8 handler:v10];
  _Block_release(v10);

  return v11;
}

- (_TtC11ActivityKit35ActivityProminenceObservationClient)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityProminenceObservationClient();
  return [(ActivityProminenceObservationClient *)&v3 init];
}

@end