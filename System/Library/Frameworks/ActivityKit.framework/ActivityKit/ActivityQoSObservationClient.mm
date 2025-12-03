@interface ActivityQoSObservationClient
- (_TtC11ActivityKit28ActivityQoSObservationClient)init;
- (id)listenForActivityQoSWithActivityIdentifier:(id)identifier handler:(id)handler;
@end

@implementation ActivityQoSObservationClient

- (id)listenForActivityQoSWithActivityIdentifier:(id)identifier handler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = qword_1EB09F748;
  identifierCopy = identifier;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB0A1AE8;
  v13[4] = sub_1A2CA5C08;
  v13[5] = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1A2CF7068;
  v13[3] = &block_descriptor_63_2;
  v10 = _Block_copy(v13);

  v11 = [v9 listenForActivityQoSWithActivityIdentifier:identifierCopy handler:v10];
  _Block_release(v10);

  return v11;
}

- (_TtC11ActivityKit28ActivityQoSObservationClient)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityQoSObservationClient();
  return [(ActivityQoSObservationClient *)&v3 init];
}

@end